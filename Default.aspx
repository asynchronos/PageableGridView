<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register assembly="PageableGridView" namespace="MattBerseth.WebControls" tagprefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <cc1:PageableGridView ID="PageableGridView1" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" CellPadding="4" DataKeyNames="LEVEL_ID" 
                    DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <Columns>
                        <asp:BoundField DataField="LEVEL_ID" HeaderText="LEVEL_ID" ReadOnly="True" 
                            SortExpression="LEVEL_ID" />
                        <asp:BoundField DataField="LEVEL_CODE" HeaderText="LEVEL_CODE" 
                            SortExpression="LEVEL_CODE" />
                        <asp:BoundField DataField="LEVEL_NAME" HeaderText="LEVEL_NAME" 
                            SortExpression="LEVEL_NAME" />
                        <asp:BoundField DataField="LEVEL_ROOT" HeaderText="LEVEL_ROOT" 
                            SortExpression="LEVEL_ROOT" />
                    </Columns>
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="White" />
                </cc1:PageableGridView>
                <asp:DataPager ID="DataPager1" runat="server" 
                    PagedControlID="PageableGridView1">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                            ShowNextPageButton="False" ShowPreviousPageButton="False" />
                        <asp:NumericPagerField />
                        <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" 
                            ShowNextPageButton="False" ShowPreviousPageButton="False" />
                    </Fields>
                </asp:DataPager>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Bay01_testConnectionString %>" 
                    SelectCommand="SELECT * FROM [Controlling_Level]"></asp:SqlDataSource>
            </ContentTemplate>
        </asp:UpdatePanel>
    
    </div>
    </form>
</body>
</html>
