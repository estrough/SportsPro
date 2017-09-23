<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactDisplay.aspx.cs" Inherits="SportsPro.ContactDisplay" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Project 1b Contact Display</title>
    <meta name ="viewport" content="width=device-width, initial-scale-1" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/site.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="bootstrap.min.js"></script>

</head>
<body>
    <div class="container">
        <header class ="jumbotron"><h1>SportsPro</h1>
            <h2>Sports management sofware for the sports enthusiast</h2></header>
        <main>
            <form id="form1" runat="server" class="form-horizontal">
        <div class="row">
            <div class="form-group">
                <div class="col-sm-12"><label>Contact List:
                </label>
                    <asp:ListBox ID="lstCustomers" runat="server" CssClass="form-control" Width="420px">
                    </asp:ListBox>
                </div>
            </div>
        </div>
        <div class="col-sm-6">
            <div class="form-group">
                <div class="col-sm-12"><asp:Button ID="btnSelect" runat="server" Text="Select Additional Customers" OnClick="btnSelect_Click" BackColor="#6666FF" ForeColor="White" />

                </div>
                <div class="col-sm-12"><asp:Button ID="btnRemove" runat="server" Text="Remove Contact" OnClick="btnRemove_Click" BackColor="#6666FF" ForeColor="White" />

                </div>
                <div class="col-sm-12"><asp:Button ID="btnEmpty" runat="server" Text="Empty List" OnClick="btnEmpty_Click" BackColor="#6666FF" ForeColor="White" />

                </div>
            </div>
        </div>
        
        
        
    </form>

        </main>
    </div>
</body>
</html>
