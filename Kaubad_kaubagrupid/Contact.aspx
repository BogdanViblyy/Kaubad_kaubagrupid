<%@ Page Title="Lisa uus kaup" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Kaubad_kaubagrupid.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource1_kaubad" DefaultMode="Insert" Height="50px" OnPageIndexChanging="DetailsView1_PageIndexChanging" Width="125px">
            <Fields>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="nimetus" HeaderText="nimetus" SortExpression="nimetus" />
                <asp:TemplateField HeaderText="kaubagrupi_id" SortExpression="kaubagrupi_id">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("kaubagrupi_id") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1_kaubagrupid" DataTextField="grupinimi" DataValueField="id" SelectedValue='<%# Bind("kaubagrupi_id") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1_kaubagrupid" runat="server" ConnectionString="<%$ ConnectionStrings:kaubadConnectionString1 %>" DeleteCommand="DELETE FROM [kaubagrupid] WHERE [id] = @id" InsertCommand="INSERT INTO [kaubagrupid] ([grupinimi]) VALUES (@grupinimi)" SelectCommand="SELECT * FROM [kaubagrupid]" UpdateCommand="UPDATE [kaubagrupid] SET [grupinimi] = @grupinimi WHERE [id] = @id">
                            <DeleteParameters>
                                <asp:Parameter Name="id" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="grupinimi" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="grupinimi" Type="String" />
                                <asp:Parameter Name="id" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("kaubagrupi_id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="hind" HeaderText="hind" SortExpression="hind" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
            </asp:DetailsView>
    </h2>
        

    </main>
</asp:Content>
