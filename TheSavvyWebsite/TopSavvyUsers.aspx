<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TopSavvyUsers.aspx.cs" Inherits="TopSavvyUsers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 
    <title></title>
    <style>
       @font-face { 
		  font-family: MyFont;
		        src: url(./Resources/Fonts/SIMPLIFICA.ttf) 
		   }
           body {
                background-color: #edf1f4;
                padding: 0; 
                margin: 0;
           }
           .dxgvControl 
            {
                border-top-style:none;
                border-left-style:none;
                border-right-style:none;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3" DataSourceID="SavvyDatabase" GridLines="Horizontal" Height="304px" Width="100%" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:TemplateField><ItemTemplate>
                     <span>
                     <%#Container.DataItemIndex + 1%>
                     </span>
                     
</ItemTemplate>

                    <ControlStyle BorderStyle="None" />
                    <FooterStyle BorderStyle="None" />
                    <HeaderStyle BorderStyle="None" BackColor="White" />

<ItemStyle HorizontalAlign="Center" BackColor="White" Font-Names="MyFont" Font-Size="25pt" ForeColor="#BEC6CB" Font-Bold="True" Height="30px" Width="25%"></ItemStyle>
                </asp:TemplateField>
                <asp:TemplateField> <ItemTemplate><span><asp:Image ID="Image1" runat="server" ImageURL='<%# GetImage(Container.DataItemIndex) %>' /></span> </ItemTemplate> 
                    <HeaderStyle BackColor="White" Height="20px" />
                    <ItemStyle BackColor="White" />
                </asp:TemplateField>
                <asp:BoundField DataField="UserName" ReadOnly="True" SortExpression="UserName" HeaderText="User name">
                <ControlStyle BorderStyle="None" />
                <FooterStyle BorderStyle="None" />
                <HeaderStyle BorderStyle="None" BackColor="White" ForeColor="#BEC6CB" Font-Names="MyFont" Font-Size="15pt" Height="30px" />
                <ItemStyle HorizontalAlign="Center" Font-Names="MyFont" Font-Size="25pt" ForeColor="#29C0DB" BackColor="White" Height="50px" />
                </asp:BoundField>
                <asp:BoundField DataField="UserSavvyPointsTotal" ReadOnly="True" SortExpression="UserSavvyPointsTotal" HeaderText="Savvy Points">
                <ControlStyle BorderStyle="None" />
                <FooterStyle BorderStyle="None" />
                <HeaderStyle BorderStyle="None" BackColor="White" Font-Names="MyFont" Font-Size="15pt" ForeColor="#BEC6CB" Height="30px" />
                <ItemStyle HorizontalAlign="Center" Font-Names="MyFont" Font-Size="25pt" ForeColor="#BEC6CB" BackColor="#FFFFFF" Width="25%" Font-Bold="True" Height="50px" />
                </asp:BoundField>
            </Columns>
            <EmptyDataRowStyle BorderStyle="None" />
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" BorderStyle="None" BorderColor="#EDF1F4" ForeColor="#4A3C8C"/>
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
        <asp:SqlDataSource ID="SavvyDatabase" runat="server" ConnectionString="<%$ ConnectionStrings:SavvyDatabaseConnectionString %>" SelectCommand="SELECT TOP 30 [UserName], [UserSavvyPointsTotal] FROM [UserInformation] ORDER BY [UserSavvyPointsTotal] DESC "></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
