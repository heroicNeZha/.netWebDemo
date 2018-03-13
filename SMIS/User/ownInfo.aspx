<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="ownInfo.aspx.cs" Inherits="SMIS.User.ownInfo" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="height:50px;width:90%">
        <h3>>>>旅客信息</h3>
    </div>
    <div style="width:70%" class="well">
        <div style="margin-left:20%">
             <div class="input-group" style="">
             <span class="input-group-addon">姓名</span>
            <asp:TextBox runat="server" ID="TextBox1" CssClass="form-control" />
            </div>

        <div class="input-group">
             <span class="input-group-addon">用户名</span>
            <asp:TextBox runat="server" ID="TextBox2" CssClass="form-control" />
            </div>

        <div class="input-group">
             <span class="input-group-addon">密码</span>
            <asp:TextBox runat="server" ID="TextBox3" CssClass="form-control" />
            </div>

        <div class="input-group">
             <span class="input-group-addon">手机号</span>
            <asp:TextBox runat="server" ID="TextBox4" CssClass="form-control" />
            </div>

        <div class="input-group">
             <span class="input-group-addon">余额</span>
            <asp:TextBox runat="server" ID="TextBox5" CssClass="form-control" />
            </div>
        </div>
    </div>
</asp:Content>
