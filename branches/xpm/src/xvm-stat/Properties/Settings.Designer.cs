﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.18047
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace wot.Properties {
    
    
    [global::System.Runtime.CompilerServices.CompilerGeneratedAttribute()]
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.VisualStudio.Editors.SettingsDesigner.SettingsSingleFileGenerator", "11.0.0.0")]
    internal sealed partial class Settings : global::System.Configuration.ApplicationSettingsBase {
        
        private static Settings defaultInstance = ((Settings)(global::System.Configuration.ApplicationSettingsBase.Synchronized(new Settings())));
        
        public static Settings Default {
            get {
                return defaultInstance;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("res_mods\\xvm\\.xvmfs")]
        public string MountPoint {
            get {
                return ((string)(this["MountPoint"]));
            }
            set {
                this["MountPoint"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("10000")]
        public int Timeout {
            get {
                return ((int)(this["Timeout"]));
            }
            set {
                this["Timeout"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute(@"<?xml version=""1.0"" encoding=""utf-16""?>
<ArrayOfString xmlns:xsi=""http://www.w3.org/2001/XMLSchema-instance"" xmlns:xsd=""http://www.w3.org/2001/XMLSchema"">
  <string>RU	aHR0cDovL3Byb3h5Mi5idWx5Y2hldi5uZXQvJTE/dG9rZW49JTI=</string>
  <string>EU	aHR0cDovL3Byb3h5Mi5idWx5Y2hldi5uZXQvJTE/dG9rZW49JTI=</string>
  <string>US	aHR0cDovL3Byb3h5Mi5idWx5Y2hldi5uZXQvJTE/dG9rZW49JTI=</string>
  <string>CN	aHR0cDovL2dhcnBoeS5jb20vdG9vbC93b3QvRUZGMi8lMS5qc29u</string>
  <string>CN	aHR0cDovL3RpcHMuY3MwMzA5LmltdHQucXEuY29tL2dldFVzZXI/bmFtZT0lMSZ6b25lPW5vcnRoJmxjPTIwMTIwMzA4JndheT1uZXc=</string>
  <string>CN	aHR0cDovL3dvdHJhdGUudmljcC5jby9Xb3RSYXRlWFZNMS8lMQ==</string>
  <string>SEA	aHR0cDovL3Byb3h5Mi5idWx5Y2hldi5uZXQvJTE/dG9rZW49JTI=</string>
  <string>VTC	aHR0cDovL3Byb3h5Mi5idWx5Y2hldi5uZXQvJTE/dG9rZW49JTI=</string>
  <string>KR	aHR0cDovL3Byb3h5Mi5idWx5Y2hldi5uZXQvJTE/dG9rZW49JTI=</string>
</ArrayOfString>")]
        public global::System.Collections.Specialized.StringCollection ProxyServers {
            get {
                return ((global::System.Collections.Specialized.StringCollection)(this["ProxyServers"]));
            }
            set {
                this["ProxyServers"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("res_mods\\xvm\\db\\xvm-stat.db")]
        public string XvmDbFileName {
            get {
                return ((string)(this["XvmDbFileName"]));
            }
            set {
                this["XvmDbFileName"] = value;
            }
        }
    }
}
