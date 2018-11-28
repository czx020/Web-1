<%@ Page Title="" Language="C#" MasterPageFile="~/pageMaster.master" AutoEventWireup="true" CodeFile="book.aspx.cs" Inherits="book" StylesheetTheme="myskin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="书籍编号" DataSourceID="AccessDataSource1" CssClass="dispaly" 
        AllowPaging="True" PageSize="7">
        <Columns>
            <asp:BoundField DataField="书籍编号" HeaderText="书籍编号" ReadOnly="True" 
                SortExpression="书籍编号" />
            <asp:BoundField DataField="书籍名称" HeaderText="书籍名称" SortExpression="书籍名称" />
            <asp:BoundField DataField="书籍价格" HeaderText="书籍价格" SortExpression="书籍价格" />
            <asp:BoundField DataField="出版社" HeaderText="出版社" SortExpression="出版社" />
            <asp:BoundField DataField="出版时间" HeaderText="出版时间" SortExpression="出版时间" 
                DataFormatString="{0:d}" />
            <asp:BoundField DataField="主编作者" HeaderText="主编作者" SortExpression="主编作者" />
            <asp:BoundField DataField="书籍类别" HeaderText="书籍类别" SortExpression="书籍类别" />
            <asp:CheckBoxField DataField="图书状态" HeaderText="图书状态" SortExpression="图书状态" />
        </Columns>
    </asp:GridView>
<asp:AccessDataSource ID="AccessDataSource1" runat="server" 
    DataFile="~/mydatabase.mdb" SelectCommand="SELECT * FROM [书籍表]">
</asp:AccessDataSource>
</asp:Content>

