<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Grande_Collecte.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="ProductDataSource" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" ShowFooter="True" Height="308px" Width="782px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
            <asp:TemplateField HeaderText="ProductName" SortExpression="ProductName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ProductName") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFV" runat="server" ErrorMessage="Please enter your name" ControlToValidate="TextBox" Text="!" ForeColor="#FF0066"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("ProductName") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="Txtname" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFV" runat="server" ErrorMessage="Please enter NAME" ControlToValidate="Txtname" Text="!" ForeColor="#FF0066"></asp:RequiredFieldValidator>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ProductID" InsertVisible="False" SortExpression="ProductID">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("ProductID") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("ProductID") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
       
                    <asp:LinkButton ValidationGroup= "INSERT" OnClick="LinkBtnInst_Click" ID="LinkBtnInst" runat="server">Insert</asp:LinkButton>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ProductPrice" SortExpression="ProductPrice">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("ProductPrice") %>'></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV2" runat="server" ErrorMessage="Please enter PRICE" ControlToValidate="TextBox2" Text="!" ForeColor="#FF0066"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("ProductPrice") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="Txtprice" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFV2" runat="server" ErrorMessage="Please enter PRICE" ControlToValidate="Txtprice" Text="!" ForeColor="#FF0066"></asp:RequiredFieldValidator>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ProductStock" SortExpression="ProductStock">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("ProductStock") %>'></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RFV3" runat="server" ErrorMessage="Please enter STOCK" ControlToValidate="TextBox3" Text="!" ForeColor="#FF0066"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("ProductStock") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="Txtstock" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFV3" runat="server" ErrorMessage="Please enter STOCK" ControlToValidate="Txtstock" Text="!" ForeColor="#FF0066"></asp:RequiredFieldValidator>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:HyperLinkField DataNavigateUrlFields="ProductID" DataNavigateUrlFormatString="uploadimages.aspx?Id={0}" InsertVisible="False" Text="Set Image" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
</asp:GridView>
    <asp:ValidationSummary ID="ValidationSummary1" ForeColor="#666666" runat="server" />
    <asp:SqlDataSource ID="ProductDataSource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:db_1525592_co5027_asgConnectionString %>" DeleteCommand="DELETE FROM [Items] WHERE [ProductID] = @original_ProductID AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([ProductPrice] = @original_ProductPrice) OR ([ProductPrice] IS NULL AND @original_ProductPrice IS NULL)) AND (([ProductStock] = @original_ProductStock) OR ([ProductStock] IS NULL AND @original_ProductStock IS NULL))" InsertCommand="INSERT INTO [Items] ([ProductName], [ProductPrice], [ProductStock]) VALUES (@ProductName, @ProductPrice, @ProductStock)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Items]" UpdateCommand="UPDATE [Items] SET [ProductName] = @ProductName, [ProductPrice] = @ProductPrice, [ProductStock] = @ProductStock WHERE [ProductID] = @original_ProductID AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([ProductPrice] = @original_ProductPrice) OR ([ProductPrice] IS NULL AND @original_ProductPrice IS NULL)) AND (([ProductStock] = @original_ProductStock) OR ([ProductStock] IS NULL AND @original_ProductStock IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_ProductID" Type="Int32" />
            <asp:Parameter Name="original_ProductName" Type="String" />
            <asp:Parameter Name="original_ProductPrice" Type="Decimal" />
            <asp:Parameter Name="original_ProductStock" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="ProductPrice" Type="Decimal" />
            <asp:Parameter Name="ProductStock" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="ProductPrice" Type="Decimal" />
            <asp:Parameter Name="ProductStock" Type="Int32" />
            <asp:Parameter Name="original_ProductID" Type="Int32" />
            <asp:Parameter Name="original_ProductName" Type="String" />
            <asp:Parameter Name="original_ProductPrice" Type="Decimal" />
            <asp:Parameter Name="original_ProductStock" Type="Int32" />
        </UpdateParameters>
</asp:SqlDataSource>
    </asp:Content>
