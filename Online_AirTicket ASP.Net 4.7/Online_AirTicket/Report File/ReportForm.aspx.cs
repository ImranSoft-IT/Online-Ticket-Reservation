using CrystalDecisions.CrystalReports.Engine;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_AirTicket.Report_File
{
    public partial class ReportForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int BookID = Convert.ToInt32(Request.QueryString["FlightBooking"].ToString());



            DataSet ds = getData(BookID);
            // ds.WriteXml(@"D:\1249867\Module-07 Project\Online_AirTicket\Online_AirTicket\Report File\FlightBookingSystem.xsd", XmlWriteMode.WriteSchema);

            ReportDocument rd = new ReportDocument();
            rd.Load(Server.MapPath("~/Report File/BookingInformation.rpt"));
            rd.SetDataSource(ds);
            CrystalReportViewer1.ReportSource = rd;
        }

        public DataSet getData(int BookID)
        {

            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString))
            {
                using (SqlDataAdapter da = new SqlDataAdapter())
                {
                    string sql = @"select PassengerInfo.FirstName, BookingFlight.FromPlace, BookingFlight.Destination, CabinType.Class_Name, BookingFlight.FlightDate, FlightInfo.FlightNunber from 
                    BookingFlight join PassengerInfo on BookingFlight.PassengerID = PassengerInfo.PassengerID 
			        join FlightInfo on BookingFlight.FlightID = FlightInfo.FlightID
			        join CabinType on BookingFlight.CabinID = CabinType.CabinID where BookingFlight.FlightID = @BookingFlight";
                    da.SelectCommand = new SqlCommand(sql, conn);
                    da.SelectCommand.CommandType = CommandType.Text;

                    da.SelectCommand.Parameters.Add("@BookingFlight", SqlDbType.Int).Value = BookID;

                    DataSet ds = new DataSet();
                    da.Fill(ds, "FlightBookingSystem");

                    return ds;

                }
            }
        }
    }
}