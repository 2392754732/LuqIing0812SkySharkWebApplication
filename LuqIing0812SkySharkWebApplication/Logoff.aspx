<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Logoff.aspx.cs" Inherits="LuqIing0812SkySharkWebApplication.Logoff" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    HOME
    <style type="text/css">
        #TextArea1 {
            height: 307px;
            width: 379px;
        }
    </style>
    <style type="text/css">
        #TextArea1 {
            height: 174px;
            width: 604px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div>
        <textarea id="TextArea1">
            Thank you for using SkyShark Airline.
            Looking forward for severing again.
        </textarea><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/default.aspx">Click Here To Logon</asp:HyperLink>
&nbsp;</div>
    </form>
</asp:Content>
