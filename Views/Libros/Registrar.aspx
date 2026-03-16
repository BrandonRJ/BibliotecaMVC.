<%@ Page Title="Registrar Libro" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registrar.aspx.cs" Inherits="BibliotecaMVC.Views.Libros.Registrar" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Registrar Nuevo Libro</h2>
    <hr />
    <div class="form-group">
        <label>Código:</label>
        <asp:TextBox ID="txtCodigo" runat="server" CssClass="form-control"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvCodigo" runat="server" ControlToValidate="txtCodigo"
            ErrorMessage="El código es requerido" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
    </div>
    <div class="form-group">
        <label>Título:</label>
        <asp:TextBox ID="txtTitulo" runat="server" CssClass="form-control"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvTitulo" runat="server" ControlToValidate="txtTitulo"
            ErrorMessage="El título es requerido" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
    </div>
    <div class="form-group">
        <label>Autor:</label>
        <asp:TextBox ID="txtAutor" runat="server" CssClass="form-control"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvAutor" runat="server" ControlToValidate="txtAutor"
            ErrorMessage="El Autor es requerido" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
    </div>
    <div class="form-group">
        <label>Fecha de Publicación:</label>
        <asp:TextBox ID="txtFecha" ErrorMessage="El fecha es requerida" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvFecha" runat="server" ControlToValidate="txtFecha"
            ErrorMessage="La Fecha es requerida" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
    </div>
    <div style="margin-top: 20px;">
        <asp:Button ID="btnGuardar" runat="server" Text="Guardar Libro" CssClass="btn btn-primary" OnClick="btnGuardar_Click" />
        <asp:HyperLink ID="btnCancelar" runat="server" NavigateUrl="~/Views/Consultar.aspx" Text="Cancelar" CssClass="btn btn-secondary" Style="margin-left: 10px;" />
    </div>
    <div style="margin-top: 10px;">
        <asp:Label ID="lblMensaje" runat="server" Text="" CssClass="text-success"></asp:Label>
    </div>
</asp:Content>
