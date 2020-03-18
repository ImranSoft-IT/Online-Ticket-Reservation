<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PassengerInformation.aspx.cs" Inherits="Online_AirTicket.MainPage.PassengerInformation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/jquery-3.3.1.js"></script>
    <script src="../Scripts/bootstrap.js"></script>
    <link href="../Content/bootstrap.css" rel="stylesheet" />

<div >
       <h3>Passenger Information</h3> 

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="PassengerID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="PassengerID" HeaderText="PassengerID" ReadOnly="True" InsertVisible="False" SortExpression="PassengerID">
                <ItemStyle CssClass="col-xs-2" />
            </asp:BoundField>
            
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName"><ItemStyle CssClass="col-xs-2" /></asp:BoundField>
            
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName"><ItemStyle CssClass="col-xs-2" /></asp:BoundField>
            
            <asp:BoundField DataField="DateOfBirth" HeaderText="DateOfBirth" SortExpression="DateOfBirth"><ItemStyle CssClass="col-xs-2" /></asp:BoundField>
            
            <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age"><ItemStyle CssClass="col-xs-2" /></asp:BoundField>
            
            <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber"><ItemStyle CssClass="col-xs-2" /></asp:BoundField>
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email"><ItemStyle CssClass="col-xs-2" /></asp:BoundField>
            <asp:BoundField DataField="passportNo" HeaderText="passportNo" SortExpression="passportNo"><ItemStyle CssClass="col-xs-2" /></asp:BoundField>
            <asp:TemplateField HeaderText="ImageUrl" SortExpression="ImageUrl">
                <EditItemTemplate>
                    <asp:TextBox runat="server" Text='<%# Bind("ImageUrl") %>' ID="TextBox1"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="70" Width="70" ImageUrl='<%# Bind("ImageUrl") %>' />
                   <%-- <asp:Label runat="server" Text='<%# Bind("ImageUrl") %>' ID="Label1"></asp:Label>--%>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:CommandField ShowSelectButton="True" />

        </Columns>
        <HeaderStyle CssClass="bg-primary" />
        <PagerSettings Mode="NumericFirstLast" />
        <PagerStyle CssClass="pager" BackColor="#8c8c8c" HorizontalAlign="Center" />
        <SelectedRowStyle CssClass="warning" />
    </asp:GridView>


    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="SELECT * FROM [PassengerInfo]"></asp:SqlDataSource>
</div> 
    <br />
<div class="col-sm-6 right">
    <h3>Passenger Modify</h3>
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="PassengerID" DataSourceID="SqlDataSource2" AllowPaging="True" OnItemDeleted="DetailsView1_ItemDeleted" OnItemInserted="DetailsView1_ItemInserted" OnItemInserting="DetailsView1_ItemInserting" OnItemUpdated="DetailsView1_ItemUpdated" OnItemUpdating="DetailsView1_ItemUpdating">
        <Fields>
            <asp:TemplateField HeaderText="PassengerID" InsertVisible="False" SortExpression="PassengerID">
                <EditItemTemplate>
                    <asp:Label runat="server" Text='<%# Eval("PassengerID") %>' ID="Label1"></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%# Bind("PassengerID") %>' ID="Label1"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="FirstName" SortExpression="FirstName">
                <EditItemTemplate>
                    <asp:TextBox runat="server" Text='<%# Bind("FirstName") %>' ID="TextBox1"></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox runat="server" Text='<%# Bind("FirstName") %>' ID="TextBox1"></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%# Bind("FirstName") %>' ID="Label2"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="LastName" SortExpression="LastName">
                <EditItemTemplate>
                    <asp:TextBox runat="server" Text='<%# Bind("LastName") %>' ID="TextBox2"></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox runat="server" Text='<%# Bind("LastName") %>' ID="TextBox2"></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%# Bind("LastName") %>' ID="Label3"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="DateOfBirth" SortExpression="DateOfBirth">
                <EditItemTemplate>
                    <asp:TextBox runat="server" Text='<%# Bind("DateOfBirth") %>' ID="TextBox3"></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox runat="server" Text='<%# Bind("DateOfBirth") %>' ID="TextBox3"></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%# Bind("DateOfBirth") %>' ID="Label4"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Age" SortExpression="Age">
                <EditItemTemplate>
                    <asp:TextBox runat="server" Text='<%# Bind("Age") %>' ID="TextBox4"></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox runat="server" Text='<%# Bind("Age") %>' ID="TextBox4"></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%# Bind("Age") %>' ID="Label5"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="PhoneNumber" SortExpression="PhoneNumber">
                <EditItemTemplate>
                    <asp:TextBox runat="server" Text='<%# Bind("PhoneNumber") %>' ID="TextBox5"></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox runat="server" Text='<%# Bind("PhoneNumber") %>' ID="TextBox5"></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%# Bind("PhoneNumber") %>' ID="Label6"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Email" SortExpression="Email">
                <EditItemTemplate>
                    <asp:TextBox runat="server" Text='<%# Bind("Email") %>' ID="TextBox6"></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox runat="server" Text='<%# Bind("Email") %>' ID="TextBox6"></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%# Bind("Email") %>' ID="Label7"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="passportNo" SortExpression="passportNo">
                <EditItemTemplate>
                    <asp:TextBox runat="server" Text='<%# Bind("passportNo") %>' ID="TextBox7"></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox runat="server" Text='<%# Bind("passportNo") %>' ID="TextBox7"></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%# Bind("passportNo") %>' ID="Label8"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ImageUrl" SortExpression="ImageUrl">
                <EditItemTemplate>
                    Upload Image: <asp:FileUpload ID="fulEdit" runat="server" />
                    <%--<asp:TextBox runat="server" Text='<%# Bind("ImageUrl") %>' ID="TextBox8"></asp:TextBox>--%>
                </EditItemTemplate>
                <InsertItemTemplate>
                    Upload Image: <asp:FileUpload ID="fulInsert" runat="server" />
                    <%--<asp:TextBox runat="server" Text='<%# Bind("ImageUrl") %>' ID="TextBox8"></asp:TextBox>--%>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image2" runat="server" Width="100" Height="100" ImageUrl='<%# Bind("ImageUrl") %>' />
                   <%-- <asp:Label runat="server" Text='<%# Bind("ImageUrl") %>' ID="Label9"></asp:Label>--%>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField ShowHeader="False">
                <InsertItemTemplate>
                    <asp:Button CssClass="btn-primary" runat="server" Text="Insert" CommandName="Insert" CausesValidation="True" ID="LinkButton1"></asp:Button>&nbsp;
                    <asp:Button CssClass="btn-primary" runat="server" Text="Cancel" CommandName="Cancel" CausesValidation="False" ID="LinkButton2"></asp:Button>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Button CssClass="btn-primary" runat="server" Text="New" CommandName="New" CausesValidation="False" ID="LinkButton3"></asp:Button>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField ShowHeader="False">
                <EditItemTemplate>
                    <asp:Button CssClass="btn-success" runat="server" Text="Update" CommandName="Update" CausesValidation="True" ID="LinkButton4"></asp:Button>&nbsp;
                    <asp:Button CssClass="btn-success" runat="server" Text="Cancel" CommandName="Cancel" CausesValidation="False" ID="LinkButton5"></asp:Button>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Button CssClass="btn-success" runat="server" Text="Edit" CommandName="Edit" CausesValidation="False" ID="LinkButton6"></asp:Button>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:Button CssClass="btn-danger" runat="server" Text="Delete" CommandName="Delete" CausesValidation="False" ID="LinkButton7"></asp:Button>
                </ItemTemplate>
            </asp:TemplateField>

        </Fields>
    </asp:DetailsView>


    <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConflictDetection="CompareAllValues" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' DeleteCommand="DELETE FROM [PassengerInfo] WHERE [PassengerID] = @original_PassengerID AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([DateOfBirth] = @original_DateOfBirth) OR ([DateOfBirth] IS NULL AND @original_DateOfBirth IS NULL)) AND (([Age] = @original_Age) OR ([Age] IS NULL AND @original_Age IS NULL)) AND (([PhoneNumber] = @original_PhoneNumber) OR ([PhoneNumber] IS NULL AND @original_PhoneNumber IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([passportNo] = @original_passportNo) OR ([passportNo] IS NULL AND @original_passportNo IS NULL)) AND (([ImageUrl] = @original_ImageUrl) OR ([ImageUrl] IS NULL AND @original_ImageUrl IS NULL))" InsertCommand="INSERT INTO [PassengerInfo] ([FirstName], [LastName], [DateOfBirth], [Age], [PhoneNumber], [Email], [passportNo], [ImageUrl]) VALUES (@FirstName, @LastName, @DateOfBirth, @Age, @PhoneNumber, @Email, @passportNo, @ImageUrl)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [PassengerInfo] WHERE ([PassengerID] = @PassengerID)" UpdateCommand="UPDATE [PassengerInfo] SET [FirstName] = @FirstName, [LastName] = @LastName, [DateOfBirth] = @DateOfBirth, [Age] = @Age, [PhoneNumber] = @PhoneNumber, [Email] = @Email, [passportNo] = @passportNo, [ImageUrl] = @ImageUrl WHERE [PassengerID] = @original_PassengerID AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([DateOfBirth] = @original_DateOfBirth) OR ([DateOfBirth] IS NULL AND @original_DateOfBirth IS NULL)) AND (([Age] = @original_Age) OR ([Age] IS NULL AND @original_Age IS NULL)) AND (([PhoneNumber] = @original_PhoneNumber) OR ([PhoneNumber] IS NULL AND @original_PhoneNumber IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([passportNo] = @original_passportNo) OR ([passportNo] IS NULL AND @original_passportNo IS NULL)) AND (([ImageUrl] = @original_ImageUrl) OR ([ImageUrl] IS NULL AND @original_ImageUrl IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_PassengerID" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_FirstName" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_LastName" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_DateOfBirth" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Age" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_PhoneNumber" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Email" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_passportNo" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_ImageUrl" Type="String"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="FirstName" Type="String"></asp:Parameter>
            <asp:Parameter Name="LastName" Type="String"></asp:Parameter>
            <asp:Parameter Name="DateOfBirth" Type="String"></asp:Parameter>
            <asp:Parameter Name="Age" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="PhoneNumber" Type="String"></asp:Parameter>
            <asp:Parameter Name="Email" Type="String"></asp:Parameter>
            <asp:Parameter Name="passportNo" Type="String"></asp:Parameter>
            <asp:Parameter Name="ImageUrl" Type="String"></asp:Parameter>
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" DefaultValue="1" Name="PassengerID" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="FirstName" Type="String"></asp:Parameter>
            <asp:Parameter Name="LastName" Type="String"></asp:Parameter>
            <asp:Parameter Name="DateOfBirth" Type="String"></asp:Parameter>
            <asp:Parameter Name="Age" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="PhoneNumber" Type="String"></asp:Parameter>
            <asp:Parameter Name="Email" Type="String"></asp:Parameter>
            <asp:Parameter Name="passportNo" Type="String"></asp:Parameter>
            <asp:Parameter Name="ImageUrl" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_PassengerID" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_FirstName" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_LastName" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_DateOfBirth" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Age" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_PhoneNumber" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Email" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_passportNo" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_ImageUrl" Type="String"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
</div>


</asp:Content>
