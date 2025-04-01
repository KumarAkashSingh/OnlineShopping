﻿<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style2
    {
        width: 259px;
    }
    .style3
    {
        height: 8px;
    }
    .style4
    {
        height: 9px;
    }
    .style5
    {
        width: 100px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
    <tr>
        <td class="tblhead">
            User Login Area</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <br />
            <br />
        </td>
    </tr>
    <tr>
        <td style="text-align: center">
            <table align="center" class="style2" style="border: thin solid #ff0000">
                <tr>
                    <td class="tblhead" colspan="2">
                        Login Here</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="lbl">
                        UserName :
                    </td>
                    <td>
                        <asp:TextBox ID="txtuname" runat="server" CssClass="txt" Width="140px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtuname" ErrorMessage="Enter UserName" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="lbl">
                        Password :
                    </td>
                    <td>
                        <asp:TextBox ID="txtpass" runat="server" CssClass="txt" Width="140px" 
                            TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txtpass" ErrorMessage="Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                    </td>
                    <td class="style4">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td align="left" valign="top">
                        <table class="style5">
                            <tr>
                                <td>
                                    <asp:Button ID="btnlogin" runat="server" CssClass="btn" Text="Login" 
                                        onclick="btnlogin_Click" />
                                </td>
                                <td>
                                    <asp:Image ID="Image3" runat="server" Height="44px" 
                                        ImageUrl="~/images/imagesds.jpg" Width="85px" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                    </td>
                    <td align="left" class="style3">
                        <asp:Label ID="lblerror" runat="server" ForeColor="#ff0000"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td style="text-align: center; color: #ff0000">
            Dont have Username and Password
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Registration.aspx">Register Now !!</asp:HyperLink>
        </td>
    </tr>
</table>
</asp:Content>

