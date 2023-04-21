<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CreateRes.aspx.cs" Inherits="LuqIing0812SkySharkWebApplication.LOB.CreateRes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Business Execttive
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <asp:Menu ID="Menu1" runat="server" BackColor="#B5C7DE" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" Orientation="Horizontal" StaticSubMenuIndent="10px">
            <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicMenuStyle BackColor="#B5C7DE" />
            <DynamicSelectedStyle BackColor="#507CD1" />
            <Items>
                <asp:MenuItem Selected="True" Text="Create Reservation" Value="Create Reservation"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/LOB/CancelRes.aspx" Text="Cancel Reservation" Value="Cancle Reservation"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/LOB/QueryStat.aspx" Text="Quary Status" Value="Quary Status"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/LOB/ConfirmRes.aspx" Text="Confirm Reservation" Value="Confirm Reservation"></asp:MenuItem>
            </Items>
            <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticSelectedStyle BackColor="#507CD1" />
        </asp:Menu>
        <div class="tabContents">
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Make a New Reservation"></asp:Label></td>
                    <td></td>
                    
                </tr>
                <tr>
                    
                    <td >
                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/ChangePassword.aspx">Change Password</asp:HyperLink>
                    </td>
                    <td></td>
                    <td>
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Logoff.aspx">Logoff</asp:HyperLink>
                    </td>
                    <td></td>
                    
               
                </tr>
              </table>
            
            <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="2" BackColor="#F7F6F3" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em">
                <HeaderStyle BackColor="#5D7B9D" BorderStyle="Solid" Font-Bold="True" Font-Size="0.9em" ForeColor="White" HorizontalAlign="Left" />
                <NavigationButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
                <SideBarButtonStyle BorderWidth="0px" Font-Names="Verdana" ForeColor="White" />
                <SideBarStyle BackColor="#7C6F57" BorderWidth="0px" Font-Size="0.9em" VerticalAlign="Top" />
                <StepStyle BorderWidth="0px" ForeColor="#5D7B9D" />
                <WizardSteps>
                    <asp:WizardStep ID="WizardStep1" runat="server" Title="Search Flight">
                        <Table>
                            <tr>
                             <td colspan="2">
                        <asp:Label ID="Label2" runat="server" Text="Setp1: Specify Ticket Details"></asp:Label></td>
                             <td></td>
                            </tr>
                            <tr>
                             <td>
                              <asp:Label ID="Label5" runat="server" Text="Flight Number"></asp:Label></td>
                             <td>
                               <asp:TextBox ID="txtFlightNumber" runat="server"></asp:TextBox></td>
                             <td></td>
                             <td></td>
                          </tr>
                            <tr>
                             <td>
                                 <asp:Label ID="Label6" runat="server" Text="Class"></asp:Label></td>
                             <td>
                                 <asp:ListBox ID="ListBox1" runat="server">
                                     <asp:ListItem>Executive</asp:ListItem>
                                     <asp:ListItem>Business</asp:ListItem>
                                 </asp:ListBox></td>
                             <td></td>
                             <td></td>
                          </tr>
                            <tr>
                                 <td>
                                     <asp:Label ID="Label7" runat="server" Text="Date"></asp:Label></td>
                                 <td>
                                     <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                                 </td>
                                 <td></td>
                                 <td></td>
                            </tr>
                            <tr>
                                 <td></td>
                             <td></td>
                                 <td>
                                     <asp:Button ID="Button1" runat="server" Text="Next" /></td>
                             <td></td>
                            </tr>
                        </Table>
                    </asp:WizardStep>
                   

                       
                    <asp:WizardStep ID="WizardStep2" runat="server" Title="Find Flight Fare &amp; Status">
                        <Table>
                            <tr>
                             <td colspan="3">
                        <asp:Label ID="Label3" runat="server" Text="Step2: Confirm flight fare & status with customer"></asp:Label></td>
                            
                            </tr>
                            <tr>
                             <td>
                                 <asp:Label ID="Label4" runat="server" Text="Ticket No"></asp:Label></td>
                             <td>
                                 <asp:TextBox ID="txtTNo" runat="server"></asp:TextBox></td>
                             <td></td>
                             <td></td>
                          </tr>
                            <tr>
                             <td>
                                 <asp:Label ID="Label8" runat="server" Text="Fare"></asp:Label></td>
                             <td>
                                 <asp:TextBox ID="txtFare" runat="server"></asp:TextBox></td>
                             <td></td>
                             <td></td>
                          </tr>
                            <tr>
                             <td>
                                 <asp:Label ID="Label9" runat="server" Text="Status"></asp:Label></td>
                             <td>
                                 <asp:TextBox ID="txtStatus" runat="server"></asp:TextBox></td>
                             <td></td>
                             <td></td>
                          </tr>
                            <tr>
                             <td>
                                 <asp:Label ID="Label10" runat="server" Text="Origin"></asp:Label></td>
                             <td>
                                 <asp:TextBox ID="txtOrg" runat="server"></asp:TextBox></td>
                             <td></td>
                             <td></td>
                          </tr>
                            <tr>
                             <td>
                                 <asp:Label ID="Label11" runat="server" Text="Destination"></asp:Label></td>
                             <td>
                                 <asp:TextBox ID="txtDest" runat="server"></asp:TextBox></td>
                             <td></td>
                             <td></td>
                          </tr>
                            <tr>
                             <td>
                                 <asp:Label ID="Label12" runat="server" Text="Departure Time"></asp:Label></td>
                             <td>
                                 <asp:TextBox ID="txtDtime" runat="server"></asp:TextBox></td>
                             <td></td>
                             <td></td>
                          </tr>
                            <tr>
                             <td></td>
                             <td></td>
                             <td>
                                 <asp:Button ID="Button2" runat="server" Text="Previous" /></td>
                             <td>
                                 <asp:Button ID="Button3" runat="server" Text="Next" /></td>
                          </tr>
                        </Table>
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" Title="Make Reservation">
                        <Table>
                            <tr>
                             <td colspan="3">
                                 <asp:Label ID="Label13" runat="server" Text="Step3: Cofirm Booking" BorderStyle="Inset" Font-Names="MS Reference Sans Serif"></asp:Label></td>
                                
                            </tr>
                            <tr>
                             <td>
                                 <asp:Label ID="Label14" runat="server" Text="Email"></asp:Label></td>
                             <td>
                                 <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
                             <td></td>
                             <td></td>
                          </tr>
                            <tr>
                             <td></td>
                             <td>
                                 <asp:Button ID="btnCreate" runat="server" Text="Create" /></td>
                             <td>
                                 <asp:Button ID="btnCancel" runat="server" Text="Cancel" /></td>
                             <td></td>
                          </tr>
                            <tr>
                             <td></td>
                             <td></td>
                             <td></td>
                             <td></td>
                          </tr>
                        </Table>
                    </asp:WizardStep>
                </WizardSteps>
            </asp:Wizard>
                          
        </div>
    </form>
</asp:Content>
