using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading;
using System.Web;

namespace Caspar.Sample
{
    public class DbResources
    {
        private static string CST_CONNSTRING = "Data Source=.;Integrated Security=True;Connect Timeout=15;Encrypt=False;TrustServerCertificate=False";

        private static string GetValue(string key)
        {
            var culture = Thread.CurrentThread.CurrentUICulture.Name;
            using(var conn = new SqlConnection(CST_CONNSTRING))
            {
                using(var cmd = conn.CreateCommand())
                {
                    cmd.CommandText = "SELECT [Value] FROM [Caspar].[dbo].[Resource] WHERE [Key] = @key AND [Culture] = @culture";
                    cmd.Parameters.AddWithValue("key", key);
                    cmd.Parameters.AddWithValue("culture", culture);
                    conn.Open();
                    var value = cmd.ExecuteScalar();
                    return (string)value;
                }
            }
        }

        public static string Controller_HomeIndex_Message
        {
            get
            {
                return GetValue("Controller_HomeIndex_Message");
            }
        }

        public static string Model_Account_UserName_Display
        {
            get
            {
                return GetValue("Model_Account_UserName_Display");
            }
        }

        public static string Model_Account_UserName_Required
        {
            get
            {
                return GetValue("Model_Account_UserName_Required");
            }
        }

        public static string View_HomeIndex_Title
        {
            get
            {
                return GetValue("View_HomeIndex_Title");
            }
        }
    }
}