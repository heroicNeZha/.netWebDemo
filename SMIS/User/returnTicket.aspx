<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="returnTicket.aspx.cs" Inherits="SMIS.User.returnTicket" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <table class="nav-justified">
        <tr>
            <td>&nbsp; 
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderStyle="Solid" CellPadding="15"
                                CssClass="table-bordered" Font-Size="Large" Height="50px" HorizontalAlign="Center" AllowPaging="True"
                                DataKeyNames="航班号,ID" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                <AlternatingRowStyle BackColor="White" />
                                <HeaderStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" InsertVisible="False" ReadOnly="True" />
                                    <asp:BoundField DataField="航班号" HeaderText="航班号" SortExpression="航班号" />
                                    <asp:BoundField DataField="航空公司" HeaderText="航空公司" SortExpression="航空公司" />
                                    <asp:BoundField DataField="始发地" HeaderText="始发地" SortExpression="始发地" />
                                    <asp:BoundField DataField="目的地" HeaderText="目的地" SortExpression="目的地" />
                                    <asp:BoundField DataField="起飞日期" HeaderText="起飞日期" SortExpression="起飞日期" />
                                    <asp:BoundField DataField="起飞时间" HeaderText="起飞时间" SortExpression="起飞时间" />
                                    <asp:BoundField DataField="预定时间" HeaderText="预定时间" SortExpression="预定时间" />
                                    <asp:BoundField DataField="价格" HeaderText="价格" SortExpression="价格" />
                                    <asp:CommandField ShowSelectButton="true" ButtonType="Button" />
                                </Columns>
                            </asp:GridView>

            </td>
            <td>
                <br />
                <br />
                <div class="well" style="margin-left: 10px">
                    <div class="input-group" style="margin-top: 20px">
                        <span class="input-group-addon">航班</span>
                        <asp:TextBox runat="server" ID="flight" CssClass="form-control" />
                    </div>
                    <br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button runat="server" type="button" class="btn btn-primary" Text="退票" OnClick="Unnamed1_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button runat="server" type="button" class="btn btn-default" Text="取消" OnClick="Unnamed2_Click" />
                </div>
            </td>
        </tr>
    </table>
</asp:Content>
