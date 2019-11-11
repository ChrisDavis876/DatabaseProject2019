<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeBehind="AddCustomer.aspx.cs" Inherits="Bank_Demonstration.AddCustomer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="sidebar_css.css" rel="stylesheet" />
<style type="text/css">
    .auto-style1 {
        margin-left: 120px;
    }
    .auto-style2 {
        width: 283px;
    }
    .auto-style3 {
        width: 283px;
        height: 36px;
    }
    .auto-style4 {
        height: 36px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        
        <p class="auto-style1">
            <table class="nav-justified">
                <tr>
                    <td class="auto-style2">TRN</td>
                    <td>Date Joined</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:TextBox ID="txTRN" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="tbDateJoined" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">FirstName</td>
                    <td>Phone</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:TextBox ID="tbFirstname" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="tbPhone" runat="server" TextMode="Phone"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Lastname</td>
                    <td>ID Type</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:TextBox ID="tbLastname" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="ttbID" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">DOB</td>
                    <td>ID Number</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:TextBox ID="tbIDNUM" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Address</td>
                    <td>Referee</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:TextBox ID="tbAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="tbReferee" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Email</td>
                    <td>Branch</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:TextBox ID="tbEmail" runat="server" TextMode="Email"></asp:TextBox>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownBranch" runat="server" DataSourceID="SqlDataSource1" DataTextField="brnch_name" DataValueField="brnch_name">
                            <asp:ListItem>Choose....</asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [brnch_name] FROM [tbl_branch]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="AddCus" runat="server" ForeColor="#006600" Text="Add Customer" OnClick="AddCus_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        
        <br />
        <br />
        

        </p>
        

    </div>
</asp:Content>
