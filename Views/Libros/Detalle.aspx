<%@ Page Title="Detalle" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Detalle.aspx.cs" Inherits="BibliotecaMVC.Views.Libros.Detalle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="detalle-container">
        <h2>Detalle del Libro</h2>
        <hr />
        <asp:Panel ID="pnlDetalle" runat="server" Visible="false">
            <div class="info-row">
                <strong>Código:</strong>
                <asp:Label ID="lblCodigo" runat="server"></asp:Label>
            </div>
            <div class="info-row">
                <strong>Título:</strong>
                <asp:Label ID="lblTitulo" runat="server"></asp:Label>
            </div>
            <div class="info-row">
                <strong>Autor:</strong>
                <asp:Label ID="lblAutor" runat="server"></asp:Label>
            </div>
            <div class="info-row">
                <strong>Fecha de Publicación:</strong>
                <asp:Label ID="lblFecha" runat="server"></asp:Label>
            </div>
        </asp:Panel>

        <asp:Label ID="lblMensajeError" runat="server" CssClass="error-text" Visible="false"></asp:Label>

        <div class="actions" style="margin-top: 20px;">
            <asp:Button ID="btnRegresar" runat="server" Text="Volver al Catálogo" PostBackUrl="~/Views/Libros/Consultar.aspx" CssClass="btn-secondary" />
        </div>
    </div>
</asp:Content>
