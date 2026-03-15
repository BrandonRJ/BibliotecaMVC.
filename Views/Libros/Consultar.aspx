<%@ Page Title="Detalle" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Consultar.aspx.cs" Inherits="BibliotecaMVC.Views.Detalle" %>

<h2>Catálogo de Libros</h2>
    
    <div class="filter-section">
        <asp:TextBox ID="txtFiltro" runat="server" placeholder="Buscar por código o título..."></asp:TextBox>
        <asp:Button ID="btnFiltrar" runat="server" Text="Filtrar" OnClick="btnFiltrar_Click" />
    </div>

    <asp:GridView ID="gvLibros" runat="server" AutoGenerateColumns="False" OnRowCommand="gvLibros_RowCommand" CssClass="grid-view">
        <Columns>
            <asp:BoundField DataField="Codigo" HeaderText="Código" />
            <asp:BoundField DataField="Titulo" HeaderText="Título" />
            <asp:BoundField DataField="Autor" HeaderText="Autor" />
            <asp:TemplateField HeaderText="Acciones">
                <ItemTemplate>
                    <asp:LinkButton ID="btnVer" runat="server" CommandName="Ver" CommandArgument='<%# Eval("Codigo") %>'>Ver Detalle</asp:LinkButton>
                    | 
                    <asp:LinkButton ID="btnEliminar" runat="server" CommandName="Eliminar" CommandArgument='<%# Eval("Codigo") %>' 
                        OnClientClick="return confirm('¿Está seguro de eliminar este libro?');">Eliminar</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>