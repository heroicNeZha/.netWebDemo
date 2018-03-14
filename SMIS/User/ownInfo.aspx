<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="ownInfo.aspx.cs" Inherits="SMIS.User.ownInfo" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="height:50px;width:90%">
        <h3>>>>旅客信息</h3>
    </div>
    <div style="width:70%" class="well">
        <div class="input-group" style="margin-left:30%;margin-top:20px">
             <span class="input-group-addon">姓名</span>
            <asp:TextBox runat="server" ID="name" CssClass="form-control" />
            </div>

        <div class="input-group" style="margin-left:30%;margin-top:20px">
             <span class="input-group-addon">账号</span>
            <asp:TextBox runat="server" ID="username" CssClass="form-control" />
            </div>

        <div class="input-group" style="margin-left:30%;margin-top:20px">
             <span class="input-group-addon">密码</span>
            <asp:TextBox runat="server" ID="password" CssClass="form-control" />
            </div>

        <div class="input-group" style="margin-left:30%;margin-top:20px">
             <span class="input-group-addon">手机</span>
            <asp:TextBox runat="server" ID="tel" CssClass="form-control" />
            </div>

        <div class="input-group" style="margin-left:30%;margin-top:20px">
             <span class="input-group-addon">余额</span>
            <asp:TextBox runat="server" ID="money" CssClass="form-control" />
            </div>
         <div style="margin-left:33%;margin-top:20px">
            <div class="input-group">
                <asp:Button ID="submit" runat="server" Text="保存" CssClass="btn-primary" OnClick="submit_Click" />
                <asp:HiddenField ID="uid" runat="server" />
            </div>
    </div>
    </div>
</asp:Content>
