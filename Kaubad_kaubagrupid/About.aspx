<%@ Page Title="Kaubad" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Kaubad_kaubagrupid.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <h3>Tabelite kaubad ja kaubagrupid sisu</h3>
        <p>
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="Black" GridLines="Horizontal" Width="575px">
                <Columns>
                    <asp:BoundField DataField="nimetus" HeaderText="nimetus" SortExpression="nimetus" />
                    <asp:BoundField DataField="hind" HeaderText="hind" SortExpression="hind" />
                    <asp:BoundField DataField="grupinimi" HeaderText="grupinimi" SortExpression="grupinimi" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:kaubadConnectionString1 %>" DeleteCommand="DELETE FROM [kaubad] WHERE [id] = @id" InsertCommand="INSERT INTO [kaubad] ([nimetus], [kaubagrupi_id], [hind]) VALUES (@nimetus, @kaubagrupi_id, @hind)" SelectCommand="SELECT kaubad.nimetus, kaubad.hind, kaubagrupid.grupinimi FROM kaubad INNER JOIN kaubagrupid ON kaubad.kaubagrupi_id = kaubagrupid.id" UpdateCommand="UPDATE [kaubad] SET [nimetus] = @nimetus, [kaubagrupi_id] = @kaubagrupi_id, [hind] = @hind WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="nimetus" Type="String" />
                    <asp:Parameter Name="kaubagrupi_id" Type="Int32" />
                    <asp:Parameter Name="hind" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="nimetus" Type="String" />
                    <asp:Parameter Name="kaubagrupi_id" Type="Int32" />
                    <asp:Parameter Name="hind" Type="Decimal" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
</p>
    </main>
</asp:Content>
