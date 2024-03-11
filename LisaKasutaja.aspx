<%@ Page Title="Lisa uus kasutaja" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Lennujaam.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %></h2>
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="kasutajaId" DataSourceID="SqlDataSource_kasutaja" DefaultMode="Insert" CellPadding="10" CellSpacing="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
            <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="kasutajaId" HeaderText="kasutajaId" InsertVisible="False" ReadOnly="True" SortExpression="kasutajaId" />
                <asp:BoundField DataField="eesnimi" HeaderText="eesnimi" SortExpression="eesnimi" />
                <asp:TemplateField HeaderText="parool" SortExpression="parool">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("parool") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("parool") %>' TextMode="Password"></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("parool") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="onAdmin" SortExpression="onAdmin">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("onAdmin") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" SelectedValue='<%# Bind("onAdmin") %>'>
                            <asp:ListItem Selected="True" Value="True">Tõene</asp:ListItem>
                            <asp:ListItem Value="False">Väär</asp:ListItem>
                        </asp:RadioButtonList>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("onAdmin") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowInsertButton="True" CancelText="Tühista" InsertText="Lisa" />
            </Fields>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource_kasutaja" runat="server" ConnectionString="<%$ ConnectionStrings:mudel_lennujaamConnectionString1 %>" DeleteCommand="DELETE FROM [KasutajaSet] WHERE [kasutajaId] = @kasutajaId" InsertCommand="INSERT INTO [KasutajaSet] ([eesnimi], [parool], [onAdmin]) VALUES (@eesnimi, @parool, @onAdmin)" SelectCommand="SELECT [kasutajaId], [eesnimi], [parool], [onAdmin] FROM [KasutajaSet]" UpdateCommand="UPDATE [KasutajaSet] SET [eesnimi] = @eesnimi, [parool] = @parool, [onAdmin] = @onAdmin WHERE [kasutajaId] = @kasutajaId">
        <DeleteParameters>
            <asp:Parameter Name="kasutajaId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="eesnimi" Type="String" />
            <asp:Parameter Name="parool" Type="String" />
            <asp:Parameter Name="onAdmin" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="eesnimi" Type="String" />
            <asp:Parameter Name="parool" Type="String" />
            <asp:Parameter Name="onAdmin" Type="String" />
            <asp:Parameter Name="kasutajaId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </main>
</asp:Content>
