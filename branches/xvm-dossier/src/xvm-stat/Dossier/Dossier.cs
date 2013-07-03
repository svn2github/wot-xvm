using System;
using System.Collections.Generic;
using System.Net.NetworkInformation;
using System.Threading;
using System.Xml;
using LitJson;
using wot.BxmlDecoder;
using System.IO;
using Razorvine.Pickle;

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
        thread.Start();

        lock (dossierResultLock)
          return dossierResult;
      }
    }

    private void initialize()
    {
      DossierDB.Instance.initialize();
      DossierFiles.Instance.initialize();
    }

    private void ReadDossierInfoAsync()
    {
      DossierData dd = null;
      try
      {
        dd = new DossierData() { error = "NO DATA" };
      }
      catch (Exception ex)
      {
        dd = new DossierData() { error = ex.Message };
      }
      lock (dossierResultLock)
        dossierResult = JsonMapper.ToJson(dd);
    }

  }
}
