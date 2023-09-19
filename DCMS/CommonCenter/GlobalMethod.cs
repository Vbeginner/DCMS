using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;

namespace DCMS.CommonCenter
{
    public static class GlobalMethod
    {
        public static string CommonPostReq(string url,object para)
        {
            string res = string.Empty;
            try
            {

                WebRequest tRequest = WebRequest.Create(url);

                tRequest.Method = "POST";
                tRequest.ContentType = "application/json";
                var postData = Serialization.RsJsonSerializer.JsonSerializerObject(para);
                Byte[] byteArray = Encoding.UTF8.GetBytes(postData);
                tRequest.ContentLength = byteArray.Length;
                Stream dataStream = tRequest.GetRequestStream();
                dataStream.Write(byteArray, 0, byteArray.Length);
                dataStream.Close();
                HttpWebResponse tResponse = (HttpWebResponse)tRequest.GetResponse();
                dataStream = tResponse.GetResponseStream();
                StreamReader tReader = new StreamReader(dataStream);
                String sResponseFromServer = tReader.ReadToEnd();
                tReader.Close();
                dataStream.Close();
                tResponse.Close();
                   
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            return res;
        }


        public static string CommonGetReq(string MainUrl, string dt)
        {
            string rs = "";

            try
            {

                WebRequest tRequest;
                string URL = string.Concat(MainUrl + "?" + dt);

                tRequest = WebRequest.Create(URL);
                tRequest.Method = "GET";
                tRequest.ContentType = "application/json";

                WebResponse tResponse = tRequest.GetResponse();

                Stream stream = tResponse.GetResponseStream();
                StreamReader reader = new StreamReader(stream);

                var result = reader.ReadToEnd();

                tResponse.Close();

                
                return result;

            }
            catch (Exception ex)
            {
                //GlobalMethods.Logging(ex, "GlobalMethod", "SendMFSMS_MailReq");

            }
            return rs;
        }


    }
}