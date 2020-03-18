﻿using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using Online_AirTicket.Models;
using Microsoft.AspNet.Identity.EntityFramework;

namespace Online_AirTicket.Account
{
    public partial class Register : Page
    {
        protected void CreateUser_Click(object sender, EventArgs e)
        {

            ApplicationRoleManager roleManager = Context.GetOwinContext().Get<ApplicationRoleManager>();

            if (!roleManager.RoleExists(ddlRole.SelectedValue.ToString()))
            {
                IdentityRole role = new IdentityRole();
                role.Name = ddlRole.SelectedValue.ToString();
                IdentityResult roleResule = roleManager.Create(role);
                if (roleResule.Succeeded)
                {

                }
            }

            if (roleManager.RoleExists(ddlRole.SelectedValue.ToString()))
            {
                var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
                var signInManager = Context.GetOwinContext().Get<ApplicationSignInManager>();
                var user = new ApplicationUser() { UserName = Email.Text, Email = Email.Text };
                IdentityResult result = manager.Create(user, Password.Text);
                if (result.Succeeded)
                {
                    // For more information on how to enable account confirmation and password reset please visit https://go.microsoft.com/fwlink/?LinkID=320771
                    //string code = manager.GenerateEmailConfirmationToken(user.Id);
                    //string callbackUrl = IdentityHelper.GetUserConfirmationRedirectUrl(code, user.Id, Request);
                    //manager.SendEmail(user.Id, "Confirm your account", "Please confirm your account by clicking <a href=\"" + callbackUrl + "\">here</a>.");

                    signInManager.SignIn(user, isPersistent: false, rememberBrowser: false);
                    IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
                }
                else
                {
                    ErrorMessage.Text = result.Errors.FirstOrDefault();
                }
            }

            
        }
    }
}