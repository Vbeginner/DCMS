using MongoDB.Bson;
using MongoDB.Driver;
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

                #region mongo db connection
                //https://cloud.mongodb.com/v2/64c55c244a4c9d1a44c6a349#/clusters - mongo db web url
                const string connectionUri = "mongodb+srv://rajagrit321:<admin>@cluster0.zv1c78n.mongodb.net/?retryWrites=true&w=majority";

                var settings = MongoClientSettings.FromConnectionString(connectionUri);

                // Set the ServerApi field of the settings object to Stable API version 1
                settings.ServerApi = new ServerApi(ServerApiVersion.V1);

                // Create a new client and connect to the server
                var client = new MongoClient(settings);

                // Send a ping to confirm a successful connection
                try
                {
                    var result = client.GetDatabase("admin").RunCommand<BsonDocument>(new BsonDocument("ping", 1));
                    Console.WriteLine("Pinged your deployment. You successfully connected to MongoDB!");

                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex);
                }

                #endregion

                //SqlCon = new SqlConnection("Data Source=DESKTOP-D0BCFT7\\" +~ā
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