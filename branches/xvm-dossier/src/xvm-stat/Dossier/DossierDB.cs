using Community.CsharpSqlite;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace wot.Dossier
{
  public class DossierDB: Singleton<DossierDB>
  {
    #region private ctor()
    private DossierDB()
    {
    }
    #endregion

    private const string DB_FILE_NAME = "xvm-stat.db";

    private const string VAR_DB_VERSION = "DB_VERSION";
    private const string DB_VERSION = "1";

    #region DB Structure
    private static string[] CREATE_Commands = {
      "CREATE TABLE Vars (key TEXT PRIMARY KEY, value TEXT)",
      "INSERT INTO Vars VALUES ('" + VAR_DB_VERSION + "', '" + DB_VERSION + "')",

      "CREATE TABLE VehicleInfo (vid INT, vname TEXT, level INT, class INT, premium INT, hp INT, PRIMARY KEY(vid))",
      "CREATE INDEX idx_VehicleInfo_vname ON VehicleInfo (vname)",

      "CREATE TABLE VehicleStat (playerName TEXT, vid INT, dt INT, data TEXT, company TEXT, clan TEXT, PRIMARY KEY(playerName, vid, dt))",
      "CREATE INDEX idx_VehicleStat_playerName_dt ON VehicleStat (playerName, dt)",

      "CREATE TABLE Summary (playerName TEXT, dt INT, battles INT, wins INT, losses INT, survived INT, xp INT, avgXp INT, maxXp INT, PRIMARY KEY(playerName, dt))",

      "CREATE TABLE DossierCacheFiles (filename TEXT PRIMARY KEY, modified INT, lastBattleTime INT)",
    };
    #endregion

    private SQLiteDatabase db;

    #region initialization

    private static string[] PRAGMA_Commands = {
      "PRAGMA auto_vacuum = INCREMENTAL",
      "PRAGMA incremental_vacuum(1024)",
      "PRAGMA journal_mode = WAL",
      "PRAGMA locking_mode = EXCLUSIVE",
      "PRAGMA synchronous =  NORMAL",
      "PRAGMA temp_store =  MEMORY",
    };

    public void initialize()
    {
      db = new SQLiteDatabase(DB_FILE_NAME);
      for (int i = 0; i < PRAGMA_Commands.Length; i++)
        db.ExecuteNonQuery(PRAGMA_Commands[i]);

      ArrayList tables = db.GetTables();
      if (tables.Count == 0)
        CreateDatabase();
      else
      {
        string ver = db.ExecuteQuery("SELECT value FROM Vars WHERE key='" + VAR_DB_VERSION + "'").Rows[0][0].ToString();
        if (ver != DB_VERSION)
          UpgradeDatabase(ver);
      }

      UpdateVehicleInfo();
    }

    private void CreateDatabase()
    {
      for (int i = 0; i < CREATE_Commands.Length; i++)
        db.ExecuteNonQuery(CREATE_Commands[i]);
    }

    private void UpgradeDatabase(string ver)
    { 
      // TODO
    }

    private void UpdateVehicleInfo()
    {
      foreach (VehicleInfoData vd in VehicleInfo.data)
      {
        ExecuteNonQuery(String.Format("INSERT OR REPLACE INTO VehicleInfo VALUES ({0}, \"{1}\", {2}, {3}, {4}, {5})",
          vd.vid, vd.vname, vd.level, vd.vclass, vd.premium ? 1 : 0, vd.hp));
      }
    }
    #endregion

    #region Exec functions
    public static void ExecuteNonQuery(string query)
    {
      Instance.db.ExecuteNonQuery(query);
    }

    public static DataTable Execute(string query)
    {
      return Instance.db.ExecuteQuery(query);
    }

    public static DataRow ExecuteRow(string query)
    {
      DataTable t = Execute(query);
      return t != null && t.Rows.Count > 0 ? t.Rows[0] : null;
    }

    public static String ExecuteScalar(string query)
    {
      DataRow r = ExecuteRow(query);
      return r != null && r.ItemArray.Length > 0 ? r[0].ToString() : null;
    }
    #endregion

    public static int GetDossierFileParam(string filename, string paramName, int defaultValue = 0)
    {
      string value = ExecuteScalar("SELECT " + paramName + " FROM DossierCacheFiles WHERE filename='" + filename + "'");
      if (string.IsNullOrEmpty(value))
        return defaultValue;
      int res;
      return int.TryParse(value, out res) ? res : defaultValue;
    }

    public static void UpdateDossierData(string filename, int modified, DossierData dossier)
    {
      int lastBattleTime = DossierDB.GetDossierFileParam(filename, "lastBattleTime");
      int newLastBattleTime = lastBattleTime;

      if (dossier.vehicles != null)
      {
        Program.Log("UpdateDossierData: " + dossier.playerName);
        foreach (DossierVehicleData vd in dossier.vehicles)
        {
          if (vd.lastBattleTime <= lastBattleTime)
            continue;

          if (vd.lastBattleTime > newLastBattleTime)
            newLastBattleTime = vd.lastBattleTime;

          VehicleInfoData vi = VehicleInfo.ByVid(vd.vid);
          if (vi == null)
          {
            Program.Log("WARNING: no data for vid=" + vd.vid);
            continue;
          }

          Program.Log("  " + DateTime.FromFileTime((long)vd.lastBattleTime * 100000) + ": " + vi.vname + " (" + vd.tankdata_battlesCount + " battles)");
          
          ExecuteNonQuery(String.Format("INSERT OR REPLACE INTO VehicleStat VALUES (\"{0}\", {1}, {2}, \"{3}\", \"{4}\", \"{5}\")",
            dossier.playerName, 
            vd.vid, 
            vd.lastBattleTime,
            vd.TankDataToJson().Replace("\"", "\"\""),
            vd.CompanyDataToJson().Replace("\"", "\"\""),
            vd.ClanDataToJson().Replace("\"", "\"\"")));
        }
      }

      ExecuteNonQuery(String.Format("INSERT OR REPLACE INTO DossierCacheFiles VALUES (\"{0}\", {1}, {2})", filename, modified, newLastBattleTime));
    }
  }
}
