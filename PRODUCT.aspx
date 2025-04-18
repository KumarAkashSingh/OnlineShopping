﻿<%@ Page Title="" Language="C#" MasterPageFile="~/USER.master" AutoEventWireup="true" CodeFile="PRODUCT.aspx.cs" Inherits="PRODUCT" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">PRODUCT</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="DataList1" runat="server" RepeatColumns="4"
                    RepeatDirection="Horizontal" Width="100%"
                    OnItemCommand="DataList1_ItemCommand">
                    <ItemStyle CssClass="igrid" />
                    <ItemTemplate>
                        <table class="tbl">
                            <tr>
                                <td style="text-align: center">
                                    <asp:Image ID="Image2" runat="server" CssClass="img" ImageUrl='<%#Eval("image") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>Name :
                                <asp:Label ID="Label1" runat="server" Text='<%#Eval("iname") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Price :
                                <asp:Label ID="Label2" runat="server" Text='<%#Eval("price") %>'></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%#Eval("iid") %>'>View</asp:LinkButton>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
    </table>
</asp:Content>

