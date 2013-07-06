using LitJson;
using System;
using System.Collections.Generic;
using System.Threading;

namespace wot.Dossier
{
  /// <summary>
  /// Dossier (потокобезопасный Singleton с использованием с отложенной инициализацией)
  /// </summary>
  public class Dossier : Singleton<Dossier>
  {
    #region private ctor()
    private Dossier()
    {
    }
    #endregion

    private bool initialized = false;

    private string dossierResult = "";
    private readonly object dossierLock = new object();
    private readonly object dossierResultLock = new object();

    // Entry Point
    public string GetDossierInfo(string parameters)
    {
      lock (dossierLock)
      {
        if (!initialized)
        {
          initialize();
          initialized = true;
        }

        Thread thread = new Thread(ReadDossierInfoAsync);
        thread.Start(parameters);

        lock (dossierResultLock)
          return dossierResult;
      }
    }

    private void initialize()
    {
      DossierFiles.Instance.initialize();
    }

    private void ReadDossierInfoAsync(object parameter)
    {
      string res = null;
      try
      {
        string[] parameters = (parameter as string).Split(';');
        string playerName = parameters[1];
        long end = long.Parse(parameters[2]);
        int interval = int.Parse(parameters[3]);
        int count = int.Parse(parameters[4]);
        int group_type = int.Parse(parameters[5]);
        string[] data_fields = ((string)parameters[6]).Split(',');
        string[] company_fields = ((string)parameters[7]).Split(',');
        string[] clan_fields = ((string)parameters[8]).Split(',');

        //Program.Log("ReadDossierInfoAsync");

        DossierResult dr = new DossierResult();
        for (int i = 0; i < count; ++i)
        {
          long period = end - (interval * i);
          dr[period] = DossierDB.GetDataForPeriod(playerName, period).ToArray();
        }
        res = SerializeDossierResult(dr, group_type, data_fields, company_fields, clan_fields);
      }
      catch (Exception ex)
      {
        res = "[ERROR] " + ex;
      }
      lock (dossierResultLock)
        dossierResult = res;
      //Program.Log(dossierResult);
    }

    /// <summary>
    /// 
    /// </summary>
    /// <param name="dr"></param>
    /// <param name="group_type">1 - per vehicle, 2 - summary</param>
    /// <param name="data_fields"></param>
    /// <param name="company_fields"></param>
    /// <param name="clan_fields"></param>
    /// <returns>
    ///   Serialized data
    ///   Format:
    ///     error:
    ///       [ERROR] {error string}
    ///
    ///     group_type = 1 (per vehicle)
    ///       CSV: period;vid;fld1;fld2;fld3...
    /// 
    ///     group_type = 2 (summary)
    ///       CSV: period;fld1;fld2;fld3...
    /// 
    /// </returns>
    public static string SerializeDossierResult(DossierResult dr, int group_type, string[] data_fields, string[] company_fields, string[] clan_fields)
    {
      string res = "";
      switch (group_type)
      {
        case 1:
          foreach (long period in dr.Keys)
          {
            foreach (DossierVehicleResult vr in dr[period])
            {
              res += period + ";" + vr.vid;
              if (data_fields != null)
              {
                JsonData jd = JsonMapper.ToObject(vr.data);
                foreach (string fld in data_fields)
                  res += ";" + jd[fld];
              }
              if (company_fields != null)
              {
                JsonData jd = JsonMapper.ToObject(vr.company);
                foreach (string fld in company_fields)
                  res += ";" + jd[fld];
              }
              if (clan_fields != null)
              {
                JsonData jd = JsonMapper.ToObject(vr.clan);
                foreach (string fld in clan_fields)
                  res += ";" + jd[fld];
              }
              res += "\n";
            }
          }
          break;

        case 2:
          throw new NotImplementedException("Group type not implemented: " + group_type);
          break;

        default:
          throw new NotImplementedException("Group type not implemented: " + group_type);
      }
      return res;
    }
  }
}
