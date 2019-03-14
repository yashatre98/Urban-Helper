<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminm.aspx.cs" Inherits="WebApplication19.adminm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="dishid" DataSourceID="SqlDataSource1" ShowFooter="True">
                <Columns>
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">insert</asp:LinkButton>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="dishid" SortExpression="dishid">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("dishid") %>'></asp:Label>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtdid" runat="server"></asp:TextBox>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("dishid") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="dishname" SortExpression="dishname">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("dishname") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtdname" runat="server"></asp:TextBox>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("dishname") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="dcui" SortExpression="dcui">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("dcui") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtdcui" runat="server"></asp:TextBox>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("dcui") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="dtype" SortExpression="dtype">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("dtype") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtdtype" runat="server"></asp:TextBox>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("dtype") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="dprice" SortExpression="dprice">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("dprice") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtdprice" runat="server"></asp:TextBox>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("dprice") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="img" SortExpression="img">
                        <EditItemTemplate>
                            <asp:FileUpload ID="FileUpload1" runat="server" Enabled='<%# Eval("img") %>' />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:FileUpload ID="fui" runat="server" />
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("img") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:constr %>" DeleteCommand="DELETE FROM [dish] WHERE [dishid] = @original_dishid AND (([dishname] = @original_dishname) OR ([dishname] IS NULL AND @original_dishname IS NULL)) AND (([dcui] = @original_dcui) OR ([dcui] IS NULL AND @original_dcui IS NULL)) AND (([dtype] = @original_dtype) OR ([dtype] IS NULL AND @original_dtype IS NULL)) AND (([dprice] = @original_dprice) OR ([dprice] IS NULL AND @original_dprice IS NULL)) AND (([img] = @original_img) OR ([img] IS NULL AND @original_img IS NULL))" InsertCommand="INSERT INTO [dish] ([dishid], [dishname], [dcui], [dtype], [dprice], [img]) VALUES (@dishid, @dishname, @dcui, @dtype, @dprice, @img)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [dish] ORDER BY [dtype]" UpdateCommand="UPDATE [dish] SET [dishname] = @dishname, [dcui] = @dcui, [dtype] = @dtype, [dprice] = @dprice, [img] = @img WHERE [dishid] = @original_dishid AND (([dishname] = @original_dishname) OR ([dishname] IS NULL AND @original_dishname IS NULL)) AND (([dcui] = @original_dcui) OR ([dcui] IS NULL AND @original_dcui IS NULL)) AND (([dtype] = @original_dtype) OR ([dtype] IS NULL AND @original_dtype IS NULL)) AND (([dprice] = @original_dprice) OR ([dprice] IS NULL AND @original_dprice IS NULL)) AND (([img] = @original_img) OR ([img] IS NULL AND @original_img IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_dishid" Type="Int32" />
                    <asp:Parameter Name="original_dishname" Type="String" />
                    <asp:Parameter Name="original_dcui" Type="Int32" />
                    <asp:Parameter Name="original_dtype" Type="Int32" />
                    <asp:Parameter Name="original_dprice" Type="Int32" />
                    <asp:Parameter Name="original_img" Type="Object" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="dishid" Type="Int32" />
                    <asp:Parameter Name="dishname" Type="String" />
                    <asp:Parameter Name="dcui" Type="Int32" />
                    <asp:Parameter Name="dtype" Type="Int32" />
                    <asp:Parameter Name="dprice" Type="Int32" />
                    <asp:Parameter Name="img" Type="Object" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="dishname" Type="String" />
                    <asp:Parameter Name="dcui" Type="Int32" />
                    <asp:Parameter Name="dtype" Type="Int32" />
                    <asp:Parameter Name="dprice" Type="Int32" />
                    <asp:Parameter Name="img" Type="Object" />
                    <asp:Parameter Name="original_dishid" Type="Int32" />
                    <asp:Parameter Name="original_dishname" Type="String" />
                    <asp:Parameter Name="original_dcui" Type="Int32" />
                    <asp:Parameter Name="original_dtype" Type="Int32" />
                    <asp:Parameter Name="original_dprice" Type="Int32" />
                    <asp:Parameter Name="original_img" Type="Object" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
