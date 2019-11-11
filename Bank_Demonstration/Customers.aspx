<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeBehind="Customers.aspx.cs" Inherits="Bank_Demonstration.Customers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="sidebar_css.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <h4>Search: </h4><asp:TextBox ID="search" runat="server" placeholder="Enter TRN"></asp:TextBox> <asp:Button runat="server" Text="Go" OnClick="Unnamed1_Click"/>
        <br />
        <br />
        <h1>Customers Table</h1>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="trn_no" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Width="1040px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="trn_no" HeaderText="TRN" ReadOnly="True" SortExpression="trn_no" />
                <asp:BoundField DataField="firstname" HeaderText="First Name" SortExpression="firstname" />
                <asp:BoundField DataField="lastname" HeaderText="Last Name" SortExpression="lastname" />
                <asp:BoundField DataField="dob" HeaderText="DOB" SortExpression="dob" />
                <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
                <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                <asp:BoundField DataField="date_joined" HeaderText="Joined" SortExpression="date_joined" />
                <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" />
                <asp:BoundField DataField="id_num" HeaderText="ID #" SortExpression="id_num" />
                <asp:BoundField DataField="id_type" HeaderText="ID Type" SortExpression="id_type" />
                <asp:BoundField DataField="referee_name" HeaderText="Referee" SortExpression="referee_name" />
                <asp:BoundField DataField="brnch_name" HeaderText="Branch" SortExpression="brnch_name" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tbl_customer]"></asp:SqlDataSource>
        <br />
        <a><asp:Button ID="SaveCustomer" runat="server" Text="Add New Customer" width="15%" style="color:darkgreen" OnClick="SaveCustomer_Click"/> </a>
        </div>
</asp:Content>
