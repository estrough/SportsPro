<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerDisplay.aspx.cs" Inherits="SportsPro.CustomerDisplay" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Project 1A Customer Display</title>
    <meta name ="viewport" content="width=device-width, initial-scale-1" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/site.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="bootstrap.min.js"></script>

</head>
<body>
    <div class="container">
        <header class="jumbotron"><h1>SportsPro</h1>
            <h2>Sports management sofware for the sports enthusiast</h2></header>
        <main>
            <form id="form1" runat="server" class="form-horizontal">
                
                <div class="row">
                    <div class="col-sm-8">
                        <div class="form-group">
                            <label class ="col-sm-5">Please Select a Customer:</label>
                             <asp:DropDownList ID="ddlCustomer" runat="server" CssClass="form-control" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="CustomerID" AutoPostBack="True">
                             </asp:DropDownList>
                        </div>
                    </div>
                    <div class="form-group">
                        
                        <div class="col-sm-12"><label class ="col-sm-5">Address:</label><asp:Label ID="lblStreet" runat="server"></asp:Label></div></div>
                    <div class="form-group">
                        <div class="col-sm-12"><label class ="col-sm-5"></label><asp:Label ID="lblCityState" runat="server"></asp:Label>
                            <asp:Label ID="lblComma" runat="server" Text=", "></asp:Label>
                            <asp:Label ID="lblState" runat="server"></asp:Label>
                            <asp:Label ID="lblZip" runat="server"></asp:Label>
                        </div></div>
                    <div class="form-group">
                        <div class="col-sm-12"><label class ="col-sm-5">Phone:</label><asp:Label ID="lblPhone" runat="server"></asp:Label></div></div>
                    <div class="form-group">
                        <div class="col-sm-12"><label class ="col-sm-5">Email:</label><asp:Label ID="lblEmail" runat="server"></asp:Label></div></div>
                    <div class ="form-group"><asp:Button ID="btnAdd" runat="server" Text="Add to Contact List" OnClick="btnAdd_Click" BackColor="#6666FF" Font-Names="Arial" ForeColor="White" />
         <asp:Button ID="btnDisplay" runat="server" Text="Display Contact List" OnClick="btnDisplay_Click" BackColor="#6666FF" ForeColor="White" /></div>
                    
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Customers] ORDER BY [Name]"></asp:SqlDataSource>
                    
                </div>
            </form>
        </main>
    </div>

    
</body>
</html>
