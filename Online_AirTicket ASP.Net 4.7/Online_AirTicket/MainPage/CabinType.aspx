<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CabinType.aspx.cs" Inherits="Online_AirTicket.MainPage.CabinType" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        #fromView{
            width: 750px;
            margin: 10px auto;
        }
    </style>
    <div id="fromView">
        <header id="head">
            <h3>CabinType In FormView</h3> <br />
        </header>
<div style="border:solid 1px">
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="CabinID" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            CabinID:
            <asp:Label ID="CabinIDLabel1" runat="server" Readonly="true" Text='<%# Eval("CabinID") %>' />
            <br />
            Class_Name:
            <asp:TextBox ID="Class_NameTextBox" runat="server" Text='<%# Bind("Class_Name") %>' />
            <br />
            Cost:
            <asp:TextBox ID="CostTextBox" runat="server" Text='<%# Bind("Cost") %>' />
            <br />
            <asp:Button ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:Button ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Class_Name:
            <asp:TextBox ID="Class_NameTextBox" runat="server" Text='<%# Bind("Class_Name") %>' />
            <br />
            Cost:
            <asp:TextBox ID="CostTextBox" runat="server" Text='<%# Bind("Cost") %>' />
            <br />
            <asp:Button ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:Button ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            CabinID:
            <asp:Label ID="CabinIDLabel" runat="server" Text='<%# Eval("CabinID") %>' />
            <br />
            Class_Name:
            <asp:Label ID="Class_NameLabel" runat="server" Text='<%# Bind("Class_Name") %>' />
            <br />
            Cost:
            <asp:Label ID="CostLabel" runat="server" Text='<%# Bind("Cost") %>' />
            <br />
            <asp:Button ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:Button ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:Button ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [CabinType] WHERE [CabinID] = @original_CabinID AND (([Class_Name] = @original_Class_Name) OR ([Class_Name] IS NULL AND @original_Class_Name IS NULL)) AND (([Cost] = @original_Cost) OR ([Cost] IS NULL AND @original_Cost IS NULL))" InsertCommand="INSERT INTO [CabinType] ([Class_Name], [Cost]) VALUES (@Class_Name, @Cost)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [CabinType]" UpdateCommand="UPDATE [CabinType] SET [Class_Name] = @Class_Name, [Cost] = @Cost WHERE [CabinID] = @original_CabinID AND (([Class_Name] = @original_Class_Name) OR ([Class_Name] IS NULL AND @original_Class_Name IS NULL)) AND (([Cost] = @original_Cost) OR ([Cost] IS NULL AND @original_Cost IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_CabinID" Type="Int32" />
            <asp:Parameter Name="original_Class_Name" Type="String" />
            <asp:Parameter Name="original_Cost" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Class_Name" Type="String" />
            <asp:Parameter Name="Cost" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Class_Name" Type="String" />
            <asp:Parameter Name="Cost" Type="Int32" />
            <asp:Parameter Name="original_CabinID" Type="Int32" />
            <asp:Parameter Name="original_Class_Name" Type="String" />
            <asp:Parameter Name="original_Cost" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </div>
    </div>
    <div class="navbar-collapse collapse">
        <ul class="nav navbar-nav">
            <li style="text-align:center"><a runat="server" href="~/MainPage/Contact">Contact Report</a></li>
        </ul>
    </div>


</asp:Content>
