<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeBehind="Country.aspx.cs" Inherits="Bank_Demonstration.Country" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="sidebar_css.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="country_code" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Height="151px" Width="488px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="country_code" HeaderText="COUNTRY CODE" ReadOnly="True" SortExpression="country_code" />
                <asp:BoundField DataField="country_name" HeaderText="COUNTRY" SortExpression="country_name" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tbl_country]"></asp:SqlDataSource>
        <br />
        <br />
        <asp:Button ID="btnAddCountry" runat="server" Text="Add Country" />
    </div>
</asp:Content>
