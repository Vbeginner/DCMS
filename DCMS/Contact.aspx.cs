using DCMS.Sql_Connection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DCMS
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Sql_DB_Connection OBJ = new Sql_DB_Connection();

            var ds = Sql_DB_Connection.ExecuteQuery("SELECT * FROM Booking_Rprt");
        }
    }
}