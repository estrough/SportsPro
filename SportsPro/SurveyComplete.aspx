<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SurveyComplete.aspx.cs" Inherits="SportsPro.SurveyComplete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Project 2A</title>
    <meta name ="viewport" content="width=device-width, initial-scale-1" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/site.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="bootstrap.min.js"></script>
</head>
<body>
    <div class ="container">
        <header class="jumbotron"><h1>SportsPro</h1>
            <h2>Sports management sofware for the sports enthusiast</h2></header>
        <main>
             <form id="form1" runat="server" class="form-horizontal">
                 <div class="row">
                     <div class="col-sm-8">
                         <div class="form-group">

                         <asp:Label ID="Label1" runat="server" Text="Thank you for your feedback"></asp:Label>
                         </div>
                     </div>
                 </div>
                 <div class="row">
                     <div class ="col-sm-8">
                         <div class="form-group">

                             <asp:Label ID="lblResponse" runat="server">We will be in contact with you shortly.</asp:Label>

                         </div>
                     </div>
                 </div>
                 <div class="row">
                     <div class ="col-sm-8">
                         <div class="form-group">

                             

                             <asp:Button ID="btnRetSurvey" runat="server" CssClass="btn" Text="Return to Survey" OnClick="btnRetSurvey_Click" />

                             

                         </div>
                     </div>
                 </div>
             </form>
        </main>

    </div>
    
</body>
</html>
