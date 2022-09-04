using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace DCMS.Sql_Connection
{
    public class Sql_DB_Connection
    {

        public Sql_DB_Connection()
        {
            try
            {

            }
            catch (Exception ex)
            {

            }
        }
        private static SqlConnection SqlCon = new SqlConnection();

        public static SqlConnection GetConnection()
        {
            try
            {
                //SqlCon = new SqlConnection("Data Source=DESKTOP-D0BCFT7\\" +
                //                "SQL_STARTUP;Initial Catalog=ReportServer$SQL_STARTUP;" +
                //                "Persist Security Info=True;User ID=;Password=");
                //SqlCon = new SqlConnection("Data Source=DESKTOP-MC08BAA\\SQLEXPRESS;Initial Catalog=DCMS;User ID=sa;Password=hvrtech@1311");
                SqlCon = new SqlConnection("Data Source=DESKTOP-D0BCFT7;Initial Catalog=Test_For_Web;Integrated Security=True");
                if (SqlCon != null && SqlCon.State == ConnectionState.Closed)
                {
                    SqlCon.Open();
                }
                
                return SqlCon;

            }
            catch (Exception ex)
            {

                throw ex;
            }

        }

        public static int ExecuteNonQuery(String Query)
        {
            int RowsAffected = -1;
            using (SqlConnection conn = GetConnection())
            {
                using (SqlCommand cmd = new SqlCommand(Query, conn))
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = Query;
                    try
                    {
                        RowsAffected = cmd.ExecuteNonQuery();
                    }
                    catch (Exception ex)
                    {
                        conn.Close();
                        conn.Dispose();
                        cmd.Dispose();
                        throw ex;

                    }
                    finally
                    {
                        conn.Close();
                        conn.Dispose();
                        cmd.Dispose();
                    }
                    return RowsAffected;

                }
            }

        }

        public static DataSet ExecuteQuery(string Query)
        {
            SqlConnection Con = GetConnection();
            SqlDataAdapter da = new SqlDataAdapter(Query, Con);
            try
            {

                DataSet Ds = new DataSet();
                da.Fill(Ds);
                return Ds;


            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                da.Dispose();
                Con.Close();
                Con.Dispose();
            }
        }


    }
}