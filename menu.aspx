<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="menu.aspx.cs" Inherits="WebApplication19.menu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Food Type</strong> --
        <asp:Label ID="Label1" runat="server" BorderColor="Blue" BorderStyle="Groove"></asp:Label>
&nbsp; <strong>|</strong>&nbsp; <strong>Cuisine -- </strong>
        <asp:Label ID="Label2" runat="server" BorderColor="Blue" BorderStyle="Ridge"></asp:Label>
&nbsp;&nbsp;&nbsp; <strong>|</strong> <strong>Price Upto</strong> --
        <asp:Label ID="Label3" runat="server" BorderColor="Blue" BorderStyle="Ridge"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="318px" Width="530px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="dishname" HeaderText="dishname" SortExpression="dishname" />
                <asp:BoundField DataField="dprice" HeaderText="dprice" SortExpression="dprice" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" SelectCommand="SELECT [dishname], [dprice] FROM [dish] WHERE (([dcui] = @dcui) AND ([dtype] = @dtype) AND ([dprice] &lt;= @dprice)) ORDER BY [dprice]">
            <SelectParameters>
                <asp:SessionParameter Name="dcui" SessionField="cui" Type="Int32" />
                <asp:SessionParameter Name="dtype" SessionField="type" Type="Int32" />
                <asp:SessionParameter Name="dprice" SessionField="price" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </div>
</asp:Content>
