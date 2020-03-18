using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_AirTicket.MainPage
{
    public partial class BookingAirlines : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DetailsView1_ItemInserting(object sender, DetailsViewInsertEventArgs e)
        {
            //DropDownList2
            DropDownList ddlPassengerID = (DropDownList)DetailsView1.FindControl("DropDownList1");

            //DropDownList4
            DropDownList ddlCabinId = (DropDownList)DetailsView1.FindControl("DropDownList4");


            //DropDownList5
            DropDownList FlightID = (DropDownList)DetailsView1.FindControl("DropDownList51");



            SqlDataSource1.InsertParameters["PassengerID"].DefaultValue = ddlPassengerID.SelectedValue.ToString();
            SqlDataSource1.InsertParameters["CabinID"].DefaultValue = ddlCabinId.SelectedValue.ToString();

            SqlDataSource1.InsertParameters["FlightID"].DefaultValue = FlightID.SelectedValue.ToString();

        }

        protected void DetailsView1_ItemUpdating(object sender, DetailsViewUpdateEventArgs e)
        {

            DropDownList ddlPassengerID = (DropDownList)DetailsView1.FindControl("DropDownList2");

            //DropDownList4
            DropDownList ddlCabinId = (DropDownList)DetailsView1.FindControl("DropDownList4");


            //DropDownList5
            DropDownList FlightID = (DropDownList)DetailsView1.FindControl("DropDownList5");



            SqlDataSource1.UpdateParameters["PassengerID"].DefaultValue = ddlPassengerID.SelectedValue.ToString();
            SqlDataSource1.UpdateParameters["CabinID"].DefaultValue = ddlCabinId.SelectedValue.ToString();

            SqlDataSource1.UpdateParameters["FlightID"].DefaultValue = FlightID.SelectedValue.ToString();

        }

        
    }
}