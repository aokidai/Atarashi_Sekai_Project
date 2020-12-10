<%@ Page Title="" Language="C#" MasterPageFile="~/Login/master.Master" AutoEventWireup="true" CodeBehind="Lg.aspx.cs" Inherits="NewWordProject.Login.Login.Lg" %>
<%@ Register src="../UC/login.ascx" tagname="login" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <uc1:login ID="login1" runat="server" />
</asp:Content>


