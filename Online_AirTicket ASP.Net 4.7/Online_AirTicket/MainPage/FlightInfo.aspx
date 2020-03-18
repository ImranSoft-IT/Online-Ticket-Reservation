<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FlightInfo.aspx.cs" Inherits="Online_AirTicket.MainPage.FlightInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Available Flight</h3>


    <asp:ListView ID="ListView1" runat="server" DataKeyNames="FlightID" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
        <AlternatingItemTemplate>
            <tr style="background-color: #FFFFFF;color: #284775;">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
                <td>
                    <asp:Label ID="FlightIDLabel" runat="server" Text='<%# Eval("FlightID") %>' />
                </td>
                <td>
                    <asp:Label ID="FlightNunberLabel" runat="server" Text='<%# Eval("FlightNunber") %>' />
                </td>
                <td>
                    <asp:Label ID="TakeOffLabel" runat="server" Text='<%# Eval("TakeOff") %>' />
                </td>
                <td>
                    <asp:Label ID="LandingLabel" runat="server" Text='<%# Eval("Landing") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="background-color: #999999;">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </td>
                <td>
                    <asp:Label ID="FlightIDLabel1" runat="server" Text='<%# Eval("FlightID") %>' />
                </td>
                <td>
                    <asp:TextBox ID="FlightNunberTextBox" runat="server" Text='<%# Bind("FlightNunber") %>' />
                </td>
                <td>
                    <asp:TextBox ID="TakeOffTextBox" runat="server" Text='<%# Bind("TakeOff") %>' />
                </td>
                <td>
                    <asp:TextBox ID="LandingTextBox" runat="server" Text='<%# Bind("Landing") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="FlightNunberTextBox" runat="server" Text='<%# Bind("FlightNunber") %>' />
                </td>
                <td>
                    <asp:TextBox ID="TakeOffTextBox" runat="server" Text='<%# Bind("TakeOff") %>' />
                </td>
                <td>
                    <asp:TextBox ID="LandingTextBox" runat="server" Text='<%# Bind("Landing") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="background-color: #E0FFFF;color: #333333;">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
                <td>
                    <asp:Label ID="FlightIDLabel" runat="server" Text='<%# Eval("FlightID") %>' />
                </td>
                <td>
                    <asp:Label ID="FlightNunberLabel" runat="server" Text='<%# Eval("FlightNunber") %>' />
                </td>
                <td>
                    <asp:Label ID="TakeOffLabel" runat="server" Text='<%# Eval("TakeOff") %>' />
                </td>
                <td>
                    <asp:Label ID="LandingLabel" runat="server" Text='<%# Eval("Landing") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr runat="server" style="background-color: #E0FFFF;color: #333333;">
                                <th runat="server"></th>
                                <th runat="server">FlightID</th>
                                <th runat="server">FlightNunber</th>
                                <th runat="server">TakeOff</th>
                                <th runat="server">Landing</th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
                        <asp:DataPager ID="DataPager1" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                <asp:NumericPagerField />
                                <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
                <td>
                    <asp:Label ID="FlightIDLabel" runat="server" Text='<%# Eval("FlightID") %>' />
                </td>
                <td>
                    <asp:Label ID="FlightNunberLabel" runat="server" Text='<%# Eval("FlightNunber") %>' />
                </td>
                <td>
                    <asp:Label ID="TakeOffLabel" runat="server" Text='<%# Eval("TakeOff") %>' />
                </td>
                <td>
                    <asp:Label ID="LandingLabel" runat="server" Text='<%# Eval("Landing") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [FlightInfo] WHERE [FlightID] = @original_FlightID AND (([FlightNunber] = @original_FlightNunber) OR ([FlightNunber] IS NULL AND @original_FlightNunber IS NULL)) AND (([TakeOff] = @original_TakeOff) OR ([TakeOff] IS NULL AND @original_TakeOff IS NULL)) AND (([Landing] = @original_Landing) OR ([Landing] IS NULL AND @original_Landing IS NULL))" InsertCommand="INSERT INTO [FlightInfo] ([FlightNunber], [TakeOff], [Landing]) VALUES (@FlightNunber, @TakeOff, @Landing)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [FlightInfo]" UpdateCommand="UPDATE [FlightInfo] SET [FlightNunber] = @FlightNunber, [TakeOff] = @TakeOff, [Landing] = @Landing WHERE [FlightID] = @original_FlightID AND (([FlightNunber] = @original_FlightNunber) OR ([FlightNunber] IS NULL AND @original_FlightNunber IS NULL)) AND (([TakeOff] = @original_TakeOff) OR ([TakeOff] IS NULL AND @original_TakeOff IS NULL)) AND (([Landing] = @original_Landing) OR ([Landing] IS NULL AND @original_Landing IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_FlightID" Type="Int32" />
            <asp:Parameter Name="original_FlightNunber" Type="String" />
            <asp:Parameter Name="original_TakeOff" Type="String" />
            <asp:Parameter Name="original_Landing" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="FlightNunber" Type="String" />
            <asp:Parameter Name="TakeOff" Type="String" />
            <asp:Parameter Name="Landing" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="FlightNunber" Type="String" />
            <asp:Parameter Name="TakeOff" Type="String" />
            <asp:Parameter Name="Landing" Type="String" />
            <asp:Parameter Name="original_FlightID" Type="Int32" />
            <asp:Parameter Name="original_FlightNunber" Type="String" />
            <asp:Parameter Name="original_TakeOff" Type="String" />
            <asp:Parameter Name="original_Landing" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>


</asp:Content>
