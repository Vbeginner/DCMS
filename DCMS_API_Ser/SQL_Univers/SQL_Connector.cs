using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Data.SQLite;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Threading.Tasks;

namespace DCMSServices.SQLConnection
{
    public class SQL_Connector
    {

        //private static SQLiteConnection SqliteCon = new SQLiteConnection();
        static SqlConnection MySqlCon = new SqlConnection();
        static string  conStr = @"Data Source=DESKTOP-GE9IMN2\ANDHERI_VASER;Initial Catalog=Analytical_DCMS;User ID=sa;Password=admin@123";
        //private static string directory = Path.GetDirectoryName(Assembly.GetEntryAssembly().Location);
        //private static string file = Path.Combine(@"D:\\Vishal\\My Project\\DCMS (1)\\DCMS -WIP\\", "RRSMART.sqlite");
        ////private static string file = Path.Combine(directory, "RRSMART.sqlite");
        ////----        private static string SqliteConString = "Data Source=" + file + ";";//Version=3;New=True;Compress=True;";
        //private static string SqliteConString = "Data Source=" + file + ";Pooling=true;FailIfMissing=false;";
        //CultureInfo Culture = new CultureInfo("fr-FR");

        #region GetConnection
        //****************Function to get connection object***************************************************
        /// <summary>
        /// Opens connection to database
        /// </summary>
        /// <returns>Connection object</returns>
        public static SqlConnection GetConnection()
        {
            try
            {
                //   File.AppendAllText("E:\\Error.txt" , SqliteConString);
                //SqliteCon = new SQLiteConnection(SqliteConString);
                //if (SqliteCon != null && SqliteCon.State == ConnectionState.Closed)
                //{
                //    SqliteCon.Open();
                //}
                //return SqliteCon;

                MySqlCon = new SqlConnection(conStr);
                if (MySqlCon != null && MySqlCon.State == ConnectionState.Closed)
                {
                    MySqlCon.Open();
                }
                return MySqlCon;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        #endregion

        #region ExecuteQry
        //********************************Function to execute select Query*************************************
        /// <summary>
        /// Method to execute Select statement
        /// </summary>
        /// <param name="Query">SQLite query to be executed</param>
        /// <returns>Dataset contaning values retrived by database</returns>
        public static DataSet ExecuteQry(string Query)
        {

            //SQLiteConnection Conn = GetConnection();
            //SQLiteDataAdapter da = new SQLiteDataAdapter(Query, Conn);

            SqlConnection Conn = GetConnection();
            SqlDataAdapter da = new SqlDataAdapter(Query,Conn);

            try
            {

                DataSet Ds = new DataSet();
                da.Fill(Ds);
                return Ds;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                da.Dispose();
                Conn.Close();
                Conn.Dispose();
            }


        }
        #endregion

        #region ExecuteNonQuery
        //************************Function to execute insert, delete, update query*****************************
        /// <summary>
        /// Method to execute Insert, Update, and Delete statements
        /// </summary>
        /// <param name="Query">SQLite query to be executed</param>
        /// <returns>Number of Rows affected</returns>
        public static int ExecuteNonQuery(string Query)
        {
            int RowsAffected = -1;
            using (SqlConnection Conn = GetConnection())
            {
                using (SqlCommand Cmd = new SqlCommand(Query,Conn))
                {
                    Cmd.CommandType = CommandType.Text;
                    Cmd.CommandText = Query;
                    try
                    {
                        RowsAffected = Cmd.ExecuteNonQuery();
                    }
                    catch (Exception ex)
                    {
                        Conn.Close();
                        Conn.Dispose();
                        Cmd.Dispose();
                        throw ex;
                    }
                    finally
                    {
                        Conn.Close();
                        Conn.Dispose();
                        Cmd.Dispose();
                    }
                }
            }
            return RowsAffected;
        }

        #endregion

        #region ExecuteQryConvertToString
        //***************execute query and return the vaule of first cell as string*****************************
        /// <summary>
        /// Executes query and returns output in from of string
        /// </summary>
        /// <param name="Query">SQLite query to be executed</param>
        /// <returns></returns>
        public static string ExecuteQryConvertToString(string Query)
        {
            string Result = string.Empty;
            DataSet Ds = new DataSet();
            //SQLiteConnection Conn = GetConnection();
            //SQLiteDataAdapter Da = new SQLiteDataAdapter(Query, Conn);

            using (SqlConnection Conn = GetConnection())
            {
                SqlDataAdapter Da = new SqlDataAdapter(Query,Conn);   
                try
                {
                    Da.Fill(Ds);
                    if (Ds.Tables[0].Rows.Count > 0)
                        Result = Ds.Tables[0].Rows[0].ItemArray[0].ToString();
                }
                catch (Exception ex)
                {
                    throw ex;
                }
                finally
                {
                    Conn.Close();
                    Conn.Dispose();
                    Da.Dispose();
                }
            }

            return Result;
        }
        #endregion


        public static int ExeParamExecuteNonQuery(string Query, Dictionary<string, string> Values)
        {
            int RowsAffected = -1;
            //using (SQLiteConnection Conn = GetConnection())
            using (SqlConnection Conn = GetConnection())
            {
                //using (SQLiteCommand Cmd = new SQLiteCommand(Conn))
                using (SqlCommand Cmd = new SqlCommand(Query,Conn))
                {
                    Cmd.CommandType = CommandType.Text;
                    Cmd.CommandText = Query;

                    foreach (var val in Values)
                    {
                        Cmd.Parameters.AddWithValue(val.Key, val.Value);
                    }

                    try
                    {
                        RowsAffected = Cmd.ExecuteNonQuery();
                    }
                    catch (Exception ex)
                    {
                        Conn.Close();
                        Conn.Dispose();
                        Cmd.Dispose();
                        throw ex;
                    }
                    finally
                    {
                        Conn.Close();
                        Conn.Dispose();
                        Cmd.Dispose();
                    }
                }
            }
            return RowsAffected;
        }

    }
}
