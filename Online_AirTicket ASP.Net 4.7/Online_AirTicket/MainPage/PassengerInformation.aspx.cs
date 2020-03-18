using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_AirTicket.MainPage
{
    public partial class PassengerInformation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DetailsView1_ItemUpdating(object sender, DetailsViewUpdateEventArgs e)
        {
            try
            {
                var fileUpload = (FileUpload)DetailsView1.FindControl("fulEdit");
                string fileToSave = String.Empty;

                if (fileUpload.HasFile == true)
                {
                    fileToSave = Server.MapPath("~/Images/" + fileUpload.FileName);
                    fileUpload.SaveAs(fileToSave);
                }
                else
                {
                    return;
                }

                SqlDataSource2.UpdateParameters["ImageUrl"].DefaultValue = "~/Images/" + fileUpload.FileName;


            }
            catch (Exception ex)
            {

            }
        }

        protected void DetailsView1_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
        {
            GridView1.DataBind();
        }

        protected void DetailsView1_ItemInserting(object sender, DetailsViewInsertEventArgs e)
        {
            try
            {

                var fileUpload = (FileUpload)DetailsView1.FindControl("fulInsert");
                string fileToSave = String.Empty;

                if (fileUpload.HasFile == true)
                {
                    fileToSave = Server.MapPath("~/Images/" + fileUpload.FileName);
                    fileUpload.SaveAs(fileToSave);
                }
                else
                {
                    return;
                }

                SqlDataSource2.InsertParameters["ImageUrl"].DefaultValue = "~/Images/" + fileUpload.FileName;

            }
            catch (Exception ex)
            {

            }
        }

        protected void DetailsView1_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
        {
            GridView1.DataBind();
        }

        protected void DetailsView1_ItemDeleted(object sender, DetailsViewDeletedEventArgs e)
        {
            GridView1.DataBind();
        }
    }
}