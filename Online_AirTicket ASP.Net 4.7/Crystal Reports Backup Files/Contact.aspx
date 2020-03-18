<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Online_AirTicket.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <div>

        <h5>Select Booking date for report</h5>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="FlightDate" DataValueField="BookID"></asp:DropDownList>




        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [BookID], [FlightDate] FROM [BookingFlight]"></asp:SqlDataSource>




        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />




    </div>



</asp:Content>
