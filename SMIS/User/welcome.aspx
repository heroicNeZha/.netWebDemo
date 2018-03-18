<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="welcome.aspx.cs" Inherits="SMIS.User.welcome" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1>机票订票系统</h1>
        <p class="lead">你好,<%: Session["uname"] %></p>
        <p class="lead">欢迎使用本系统客户端</p>
    </div>
</asp:Content>
