<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeBehind="Savings.aspx.cs" Inherits="Bank_Demonstration.Savings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="sidebar_css.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <h4>Search: </h4><asp:TextBox ID="search" runat="server" placeholder="Search account"></asp:TextBox> <asp:Button runat="server" Text="Go"/>
        <br />
        <br />
        <h1>Customers Savings Account Table</h1>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="cust_trn,acc_no" DataSourceID="Bank_Repo" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Height="131px" Width="738px" AllowSorting="True">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="cust_trn" HeaderText="TRN" ReadOnly="True" SortExpression="cust_trn" />
                <asp:BoundField DataField="acc_no" HeaderText="ACCOUNT #" InsertVisible="False" ReadOnly="True" SortExpression="acc_no" />
                <asp:BoundField DataField="acc_bal" HeaderText="BALANCE" SortExpression="acc_bal" />
                <asp:BoundField DataField="date_opened" HeaderText="DATE OPENED" SortExpression="date_opened" />
                <asp:BoundField DataField="date_closed" HeaderText="DATE CLOSED" SortExpression="date_closed" />
                <asp:BoundField DataField="acc_status" HeaderText="STATUS" SortExpression="acc_status" />
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
        <asp:SqlDataSource ID="Bank_Repo" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tbl_saving_acc]"></asp:SqlDataSource>
        
    </div>

    

    



</asp:Content>
