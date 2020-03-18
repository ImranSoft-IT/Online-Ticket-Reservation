<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BookingAirlines.aspx.cs" Inherits="Online_AirTicket.MainPage.BookingAirlines" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/jquery-3.3.1.js"></script>

    <style>
        #BookAir{
            width: 550px;
            margin:20px auto;
            padding:5px;
        }
        #head{
            color:cornflowerblue;

        }
    </style>

    <div id="BookAir">
        <div id="head"><h4>Booking Details in relational Table</h4></div>
        <div id="main">
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True"
        AutoGenerateRows="False" DataKeyNames="BookID" DataSourceID="SqlDataSource1" OnItemInserting="DetailsView1_ItemInserting" OnItemUpdating="DetailsView1_ItemUpdating">
        <Fields>
            <asp:TemplateField HeaderText="BookID" InsertVisible="False" SortExpression="BookID">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("BookID") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("BookID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="FromPlace" SortExpression="FromPlace">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("FromPlace") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("FromPlace") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("FromPlace") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Destination" SortExpression="Destination">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Destination") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Destination") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Destination") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="FlightDate" SortExpression="FlightDate">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("FlightDate") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("FlightDate") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("FlightDate") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Passenger Name" SortExpression="PassengerID">
                <EditItemTemplate>

                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="FirstName" DataValueField="PassengerID" SelectedValue='<%# Bind("PassengerID") %>'></asp:DropDownList>
                   
                    <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="SELECT [PassengerID], [FirstName] FROM [PassengerInfo]"></asp:SqlDataSource>
                </EditItemTemplate>
                <InsertItemTemplate>

                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource3" DataTextField="FirstName" DataValueField="PassengerID"></asp:DropDownList>
                    
                    <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="SELECT [PassengerID], [FirstName] FROM [PassengerInfo]"></asp:SqlDataSource>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("FirstName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Cabin Class" SortExpression="CabinID">
                <EditItemTemplate>

                     <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource5" DataTextField="Class_Name" DataValueField="CabinID" SelectedValue='<%# Bind("CabinID") %>'  ></asp:DropDownList>

                     <asp:SqlDataSource runat="server" ID="SqlDataSource5" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="SELECT [CabinID], [Class_Name], [Cost] FROM [CabinType]"></asp:SqlDataSource>
                   
                </EditItemTemplate>
                <InsertItemTemplate>

                    <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource50" DataTextField="Class_Name" DataValueField="CabinID"></asp:DropDownList>

                    <asp:SqlDataSource runat="server" ID="SqlDataSource50" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="SELECT [CabinID], [Class_Name], [Cost] FROM [CabinType]"></asp:SqlDataSource>
                   
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("Class_Name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Flight Number" SortExpression="FlightID">
                <EditItemTemplate>

                     <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="SqlDataSource60" DataTextField="FlightNunber" DataValueField="FlightID"></asp:DropDownList>

                    <asp:SqlDataSource runat="server" ID="SqlDataSource60" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="SELECT [FlightID], [FlightNunber], [TakeOff], [Landing] FROM [FlightInfo]" ></asp:SqlDataSource>
                   
                   
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="DropDownList51" runat="server" DataSourceID="SqlDataSource61" DataTextField="FlightNunber" DataValueField="FlightID"></asp:DropDownList>

                    <asp:SqlDataSource runat="server" ID="SqlDataSource61" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="SELECT [FlightID], [FlightNunber], [TakeOff], [Landing] FROM [FlightInfo]"></asp:SqlDataSource>
                   
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("FlightNunber") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
          
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
        <HeaderStyle CssClass="bg-primary" />
        <PagerSettings Mode="NumericFirstLast" />
        <PagerStyle CssClass="pager" BackColor="#8c8c8c" HorizontalAlign="Center" />
        
    </asp:DetailsView>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
        DeleteCommand="DELETE FROM [BookingFlight] WHERE [BookID] = @BookID" 
        InsertCommand="INSERT INTO [BookingFlight] ([FromPlace], [Destination], [FlightDate], [PassengerID], [CabinID], [FlightID]) VALUES (@FromPlace, @Destination, @FlightDate, @PassengerID, @CabinID, @FlightID)" 
       
        SelectCommand="select BookingFlight.BookID, PassengerInfo.FirstName, BookingFlight.FromPlace, BookingFlight.Destination, CabinType.Class_Name, BookingFlight.FlightDate, FlightInfo.FlightNunber , PassengerInfo.PassengerID , CabinType.CabinID , FlightInfo.FlightID from 
BookingFlight join PassengerInfo on BookingFlight.PassengerID = PassengerInfo.PassengerID 
			  join FlightInfo on BookingFlight.FlightID = FlightInfo.FlightID
			  join CabinType on BookingFlight.CabinID = CabinType.CabinID" 
        UpdateCommand="UPDATE [BookingFlight] SET [FromPlace] = @FromPlace, [Destination] = @Destination, [FlightDate] = @FlightDate, [PassengerID] = @PassengerID, [CabinID] = @CabinID, [FlightID] = @FlightID WHERE [BookID] = @BookID ">
        <DeleteParameters>
            <asp:Parameter Name="BookID" Type="Int32" />
            
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="FromPlace" Type="String" />
            <asp:Parameter Name="Destination" Type="String" />
            <asp:Parameter Name="FlightDate" Type="String" />
            <asp:Parameter Name="PassengerID" Type="Int32" />
            <asp:Parameter Name="CabinID" Type="Int32" />
            <asp:Parameter Name="FlightID" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="FromPlace" Type="String" />
            <asp:Parameter Name="Destination" Type="String" />
            <asp:Parameter Name="FlightDate" Type="String" />
            <asp:Parameter Name="PassengerID" Type="Int32" />
            <asp:Parameter Name="CabinID" Type="Int32" />
            <asp:Parameter Name="FlightID" Type="Int32" />
            
        </UpdateParameters>
    </asp:SqlDataSource>
    </div>
    </div>

    


</asp:Content>
