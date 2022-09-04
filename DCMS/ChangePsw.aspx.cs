using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DCMS
{
    public partial class ChangePsw : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ChngPswdbtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (Validate() == true)
                {
                    string newPswd = Encrpty_Pswd(newPswdTxt.Text);
                    string confirmPswd = Encrpty_Pswd(ConfirmPswdTxt.Text);

                    string query = "INSERT INTO CHANGE_PASSWORD (OLD_PSWD,NEW_PSWD,CONFIRM_PSWD) VALUES ('"+
                        oldPswdTxt.Text+"','"+newPswd+"','"+confirmPswd+"')";

                    int ab = Sql_Connection.Sql_DB_Connection.ExecuteNonQuery(query);
                    if (ab == 1)
                    {
                        string message = "Password have been saved successfully.";
                        string script = "window.onload = function(){ alert('";
                        script += message;
                        script += "')};";

                        ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
                        ClearAll();

                    }
                }
            }
            catch (Exception ex)
            {

            }

        }

        public bool Validate()
        {
            try
            {
                if (!string.IsNullOrEmpty(oldPswdTxt.Text) && !string.IsNullOrEmpty(newPswdTxt.Text) && !string.IsNullOrEmpty(ConfirmPswdTxt.Text))
                {
                   if(newPswdTxt.Text == ConfirmPswdTxt.Text)
                    {
                        
                        return true;
                    }
                    else
                    {
                        string message = "Confirm Password should be same.";
                        string script = "window.onload = function(){ alert('";
                        script += message;
                        script += "')};";
                        ClientScript.RegisterStartupScript(this.GetType(), "ErrorMessage", script, true);
                        return false;
                    }
                }
                else
                {
                    string message = "Text cannot be Empty!!!";
                    string script = "window.onload = function(){ alert('";
                    script += message;
                    script += "')};";
                    ClientScript.RegisterStartupScript(this.GetType(), "ErrorMessage", script, true);
                    return false;
                }
            }
            catch (Exception ex)
            {

            }

            return false;
        }

        public string Encrpty_Pswd(string message)
        {
            try
            {                   
                String KEY = "HVRTechnology7kW6Md?M6K921[x3#0Z";
                String ivx = "HVRTECHNOLOGYTk1";
               
                System.Text.UTF8Encoding UTF8 = new System.Text.UTF8Encoding();

                AesManaged aes = new AesManaged();

                byte[] plain = Encoding.UTF8.GetBytes(message);

                Encoding enc = Encoding.UTF8;

                SHA256 sha2 = new SHA256CryptoServiceProvider();

                byte[] rawKey = enc.GetBytes(KEY);
                byte[] rawIV = enc.GetBytes(ivx);

                byte[] hashKey = sha2.ComputeHash(rawKey);
                byte[] hashIV = sha2.ComputeHash(rawIV);

                Array.Resize(ref hashIV, 16);
                aes.Key = hashKey;
                aes.IV = hashIV;


                aes.Mode = CipherMode.CBC;
                aes.Padding = PaddingMode.PKCS7;

                ICryptoTransform crypt = aes.CreateEncryptor();

                byte[] cipher = crypt.TransformFinalBlock(plain, 0, plain.Length);
                String encryptedText = Convert.ToBase64String(cipher);

                return encryptedText;

            }
            catch (Exception ex)
            {

            }

            return "";
        }

        public void ClearAll()
        {
            try
            {
                oldPswdTxt.Text = string.Empty;
                newPswdTxt.Text = string.Empty;
                ConfirmPswdTxt.Text = string.Empty;
            }
            catch (Exception ex)
            {

            }
        }
    }
}