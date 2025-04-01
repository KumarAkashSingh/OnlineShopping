<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="View.aspx.cs" Inherits="View" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .product-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            padding: 20px;
            background-color: #f9f9f9;
        }

        .product-image-main {
            flex: 1;
            max-width: 300px;
            margin-right: 20px;
        }

        .product-details {
            flex: 2;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .product-details h2 {
            color: white;
            font-size: 24px;
            margin-bottom: 10px;
        }

        .product-details p {
            font-size: 18px;
            margin-bottom: 10px;
        }

        .product-details .btn {
            display: inline-block;
            padding: 10px 20px;
            background-color: #ff0000;
            color: #fff;
            text-decoration: none;
            border-radius: 4px;
            transition: background-color 0.3s;
        }

        .product-details .btn:hover {
            background-color: #63BE88;
        }

        .product-thumbnails {
            display: flex;
            margin-top: 20px;
        }

        .product-thumbnails img {
            margin-right: 10px;
            cursor: pointer;
            border: 1px solid #ccc;
            border-radius: 4px;
            transition: border-color 0.3s;
        }

        .product-thumbnails img:hover {
            border-color: #FF6600;
        }

        .related-products {
            margin-top: 40px;
        }

        .related-products h3 {
            font-size: 20px;
            margin-bottom: 20px;
        }

        .related-products .product-item {
            flex: 1;
            max-width: 150px;
            margin-right: 20px;
            text-align: center;
            background-color: #fff;
            padding: 10px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s;
        }

        .related-products .product-item:hover {
            transform: scale(1.05);
        }

        .related-products .product-item img {
            max-width: 100%;
            border-radius: 4px;
        }

        .related-products .product-item .btn {
            margin-top: 10px;
            font-size: 14px;
            padding: 5px 10px;
        }

        .product-image-main img {
            transition: transform 0.3s ease; /* Smooth transition for the zoom effect */
        }

        .product-image-main img:hover {
            transform: scale(1.2); /* Scale the image to 1.2 times its original size */
        }
    </style>
    <script type="text/javascript">
        function img(i) {
            var imgg = document.getElementById('<%=Image3.ClientID%>');
            imgg.src = i.src;
        }
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="product-container">
        <div class="product-image-main">
            <asp:Image ID="Image3" runat="server" Height="300px" Width="300px" CssClass="vimg" />
            <div class="product-thumbnails">
                <asp:Image ID="Image4" runat="server" Height="80px" Width="70px" onmouseover="img(this)" CssClass="vimg" />
                <asp:Image ID="Image5" runat="server" Height="80px" Width="70px" onmouseover="img(this)" CssClass="vimg" />
                <asp:Image ID="Image6" runat="server" Height="80px" Width="70px" onmouseover="img(this)" CssClass="vimg" />
            </div>
        </div>
        <div class="product-details">
            <h2>Item Name: <asp:Label ID="lblname" runat="server" CssClass="style8"></asp:Label></h2>
            <p>Price: <asp:Label ID="lblprice" runat="server" CssClass="style8"></asp:Label></p>
            <p>Quantity: <asp:Label ID="lblqnt" runat="server" CssClass="style8"></asp:Label></p>
            <p>Size: <asp:Label ID="lblqnt0" runat="server" CssClass="style8"></asp:Label></p>
            <p>Detail: <asp:Label ID="lbldetil" runat="server"></asp:Label></p>
            <asp:Button ID="Button3" runat="server" CssClass="btn" onclick="Button3_Click" Text="Buy Now" Width="120px" PostBackUrl="~/Login.aspx" />
        </div>
    </div>
    <%--<div class="related-products">
        <h3>Related Products</h3>
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="5" RepeatDirection="Horizontal" onitemcommand="DataList1_ItemCommand">
            <ItemTemplate>
                <div class="product-item">
                    <asp:Label ID="lblinamee" Text='<%#Eval("iname")%>' runat="server" ForeColor="Black"></asp:Label>
                    <asp:Image ID="imgitem" runat="server" CssClass="vimg" Height="80px" ImageUrl='<%#Eval("image") %>' Width="70px" />
                    <asp:Button ID="Button1" runat="server" CssClass="btn" Font-Size="Small" Height="25px" CommandArgument='<%#Eval("iid") %>' Text="Buy" Width="80px" />
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>--%>
</asp:Content>


<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100%;
        }
        .style4
        {
        }
        .style5
        {
        }
        .style6
        {
            width: 318px;
        }
        .style7
        {
            width: 100px;
        }
    .style8
    {
        color: #FF6600;
    }
    .style9
    {
        font-size: large;
    }
    </style>
    <script type="text/javascript">
        function img(i) {

            var imgg = document.getElementById('<%=Image3.ClientID%>');
            imgg.src = i.src;
        
        }
    
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>View Product Detail</h2>
    <table class="style2">
        <tr>
            <td class="style6">
                <asp:Image ID="Image3" runat="server" Height="282px" Width="285px" 
                    CssClass="vimg" />
            </td>
            <td valign="top" rowspan="2" 
                
                style="border-left-style: solid; border-left-width: thin; border-left-color: #C0C0C0" 
                bgcolor="#D8F5D8">
                <span class="style8"><span class="style9">&nbsp;&nbsp; Item Name : </span>
                </span><span class="style9">
                <asp:Label ID="lblname" runat="server" CssClass="style8"></asp:Label>
                </span>
                <br />
                <br />
                <span class="style9"><span class="style8">&nbsp;&nbsp;
                Item Price :
                </span>
                <asp:Label ID="lblprice" runat="server" CssClass="style8"></asp:Label>
                <br class="style8" />
                <br class="style8" />
                <span class="style8">&nbsp;&nbsp;
                Item Quntity :
                </span>
                <asp:Label ID="lblqnt" runat="server" CssClass="style8"></asp:Label>
                <br />
                <br />
                <span class="style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Item Size :
                </span>
                <asp:Label ID="lblqnt0" runat="server" CssClass="style8"></asp:Label>
                </span>
                <br />
                <br />
                <br />
                <br />
                &nbsp;&nbsp;
                Detail : 
                <asp:Label ID="lbldetil" runat="server"></asp:Label>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                &nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" CssClass="btn" onclick="Button3_Click" 
                    Text="Buy Now" Width="120px" PostBackUrl="~/Login.aspx" />
            </td>
        </tr>
        <tr>
            <td class="style6">
                <table class="style2">
                    <tr>
                        <td>
                            <asp:Image ID="Image4" runat="server" Height="80px" Width="70px"  
                                onmouseover="img(this)" CssClass="vimg"/>
                        </td>
                        <td>
                            <asp:Image ID="Image5" runat="server" Height="80px" Width="70px" 
                                onmouseover="img(this)" CssClass="vimg" />
                        </td>
                        <td>
                            <asp:Image ID="Image6" runat="server" Height="80px" Width="70px" 
                                onmouseover="img(this)" CssClass="vimg"/>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="style4" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5" colspan="2">
                <asp:DataList ID="DataList1" runat="server" RepeatColumns="7" 
                    RepeatDirection="Horizontal" onitemcommand="DataList1_ItemCommand">
                    <ItemTemplate>
                        <table class="style7">
                            <tr>
                                <td bgcolor="#009933" style="text-align: center">
                                    <asp:Label ID="lblinamee" Text='<%#Eval("iname")%>' runat="server" ForeColor="White"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: center">
                                    <asp:Image ID="imgitem" runat="server" CssClass="vimg" Height="80px" ImageUrl='<%#Eval("image") %>'
                                         Width="70px" />
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: center">
                                    <asp:Button ID="Button3" runat="server" CssClass="btn" Font-Size="Small" 
                                        Height="25px" onclick="Button3_Click" CommandArgument='<%#Eval("iid") %>' 
                                        Text="Buy" Width="80px" />
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>--%>

