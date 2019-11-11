<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeBehind="Add Country.aspx.cs" Inherits="Bank_Demonstration.Add_Country" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="sidebar_css.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 52%;
        }
        .auto-style3 {
            width: 95px;
        }
        .auto-style4 {
            width: 13px
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class =" container">

       <p>Country Code</p>
        <asp:TextBox ID="tbCountryCode" runat="server" placeholder="Add Code"></asp:TextBox>
        <br />
        <br />
        <p>Country</p>
        <asp:TextBox ID="tbCountry" runat="server" placeholder="Add Country"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="bthAddCountry" runat="server" Text="Add Now" OnClick="bthAddCountry_Click" />

    </div>
</asp:Content>
