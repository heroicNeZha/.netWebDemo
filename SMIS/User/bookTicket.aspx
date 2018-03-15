<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="bookTicket.aspx.cs" Inherits="SMIS.User.bookTicket" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="height:50px;width:90%">
        <h3>>>>订票管理</h3>
    </div>
    <table class="nav-justified">
        <tr>
            <td>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderStyle="Solid" CellPadding="15" 
        CssClass="table-bordered" DataSourceID="SqlDataSource2" Font-Size="Large" Height="50px" HorizontalAlign="Center" AllowPaging="True" 
        OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="ID">
        <AlternatingRowStyle BackColor="White" />
        <HeaderStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
            <asp:BoundField DataField="航班" HeaderText="航班" SortExpression="航班" />
            <asp:BoundField DataField="始发地" HeaderText="始发地" SortExpression="始发地" />
            <asp:BoundField DataField="目的地" HeaderText="目的地" SortExpression="目的地" />
            <asp:BoundField DataField="起飞时间" HeaderText="起飞时间" SortExpression="起飞时间" />
            <asp:BoundField DataField="到达时间" HeaderText="到达时间" SortExpression="到达时间" />
            <asp:BoundField DataField="座位数" HeaderText="座位数" SortExpression="座位数" />
            <asp:BoundField DataField="价格" HeaderText="价格" SortExpression="价格" />
            <asp:CommandField ShowSelectButton="true" ButtonType="Button" />
        </Columns>
    </asp:GridView>


            </td>
            <td>
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="View2" runat="server" >
                        <div style="width:70%" class="well">
                        <asp:Label ID="Label1" runat="server" Font-Names="微软雅黑" Font-Size="Medium" Font-Bold="False"></asp:Label>
                        <br />
                        <asp:Label ID="Label2" runat="server" Text="请在下面选择日期:" Font-Names="微软雅黑" Font-Size="Medium"></asp:Label>
                        <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged">
                            <DayStyle BackColor="#CCCCCC" />
                            <OtherMonthDayStyle BackColor="White" />
                            <SelectedDayStyle BackColor="#3366FF" />
                            </asp:Calendar>
            <div class="input-group" style="margin-left:20%;margin-top:15px">
                 <table class="nav-justified">
                                <tr>
                                    <td style="text-align:center">
                                         <asp:Button ID="Button1" runat="server" Text="订票" CssClass="btn-primary" OnClick="Button1_Click" />
                                    </td>
                                    <td style="text-align:center">
                                         <asp:Button ID="Button2" runat="server" Text="取消" CssClass="btn-default" OnClick="Button2_Click" />
                                    </td>
                                </tr>
                            </table>
            </div>
                            </div>
                    </asp:View>
                    <asp:View ID="View1" runat="server">
                        <div style="width:70%" class="well">
        <div class="input-group" style="margin-top:20px">
             <span class="input-group-addon">始发地</span>
            <asp:TextBox runat="server" ID="startplace" CssClass="form-control" />
            </div>

        <div class="input-group" style="margin-top:20px">
             <span class="input-group-addon">目的地</span>
            <asp:TextBox runat="server" ID="endplace" CssClass="form-control" />
            </div>

         <div style="margin-left:33%;margin-top:20px">
            <div class="input-group">
                <asp:Button ID="submit" runat="server" Text="查找" CssClass="btn-primary" OnClick="submit_Click" />
            </div>
    </div>
    </div>
                    </asp:View>
                </asp:MultiView>
            </td>
        </tr>
    </table>


    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:airDBConnectionString %>" 
        SelectCommand="SELECT fid AS ID, fname AS 航班, fstartplace AS 始发地, fendplace AS 目的地, fstarttime AS 起飞时间, fendtime AS 到达时间, fseat AS 座位数, fprice AS 价格 FROM flight" 
        UpdateCommand="UPDATE flight SET fname = @航班, fstartplace = @始发地, fendplace = @目的地, fstarttime = @起飞时间, fendtime = @到达时间, fseat = @座位数, fprice = @价格 Where fid = @ID" DeleteCommand="DELETE FROM flight WHERE (fid = @ID)"
        >
        <DeleteParameters>
            <asp:Parameter Name="ID" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="ID" />
            <asp:Parameter Name="航班" />
            <asp:Parameter Name="始发地" />
            <asp:Parameter Name="目的地" />
            <asp:Parameter Name="起飞时间" />
            <asp:Parameter Name="到达时间" />
            <asp:Parameter Name="座位数" />
            <asp:Parameter Name="价格" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
