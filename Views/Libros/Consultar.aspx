<%@ Page Title="Catálogo" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Consultar.aspx.cs" Inherits="BibliotecaMVC.Views.Libros.Consultar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Catálogo de Libros</h2>

    <div class="filter-section" style="margin-bottom: 20px;">
        <asp:TextBox ID="txtFiltro" runat="server" placeholder="Buscar por código o título..." CssClass="form-control" Style="display: inline-block; width: auto;"></asp:TextBox>
        <asp:Button ID="btnFiltrar" runat="server" Text="Filtrar" OnClick="btnFiltrar_Click" CssClass="btn btn-primary" />
    </div>
    <asp:GridView ID="gvLibros" runat="server" AutoGenerateColumns="False" OnRowCommand="gvLibros_RowCommand"
        CssClass="table table-striped table-bordered" DataKeyNames="Codigo">
        <Columns>
            <asp:BoundField DataField="Codigo" HeaderText="Código" />
            <asp:BoundField DataField="Titulo" HeaderText="Título" />
            <asp:BoundField DataField="Autor" HeaderText="Autor" />
            <asp:BoundField DataField="FechaPublicacion" HeaderText="Fecha de Publicación" DataFormatString="{0:dd/MM/yyyy}" />
            <asp:TemplateField HeaderText="Acciones">
                <ItemTemplate>
                    <asp:LinkButton ID="btnVer" runat="server"
                        CommandName="Ver" CommandArgument='<%# Eval("Codigo") %>' CssClass="btn btn-info btn-sm">Ver Detalle</asp:LinkButton>
                    <asp:LinkButton ID="btnEliminar" runat="server" CommandName="Eliminar" CommandArgument='<%# Eval("Codigo") %>'
                        OnClientClick="return confirm('¿Está seguro de eliminar este libro?');" CssClass="btn btn-danger btn-sm">Eliminar</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EmptyDataTemplate>
            <div class="alert alert-info" style="margin-top: 20px;">
                No se encontraron libros registrados en el catálogo.
            </div>
        </EmptyDataTemplate>
    </asp:GridView>

</asp:Content>
