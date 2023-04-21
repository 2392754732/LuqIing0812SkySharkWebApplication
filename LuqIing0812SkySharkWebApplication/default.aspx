<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="LuqIing0812SkySharkWebApplication._default" Theme="" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    HOME
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Welcome to Shyshark Airline Home Page</h1>
    <asp:Image ID="Image1" runat="server" ImageUrl="~/skyShark.png" Width="850px" Height="260px"/>
    <p><asp:Label runat="server" Text="Label"></asp:Label>Launched in 1999, SkyShark Airlines is a United States-based airline that has rapidly grown in the past years</p>
    <form id="form1" runat="server">
        <div>
            <table>  
                <tr>
                    <td colspan="2">
                        <asp:Label ID="lblMessage" runat="server" ForeColor="Red" Font-Bold="true"></asp:Label>
                    </td>
                    <td></td>
                   
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" Text="Username" ID="Label1"></asp:Label>
                     </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtUserName"></asp:TextBox>
                         
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Specify Valid a Uesr Name." ControlToValidate="txtUserName"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" Text="Password" ID="Label2"></asp:Label>
                         
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtPsssword" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                                           </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click"  />
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
            </table>
            
        </div>
    </form>

</asp:Content>
