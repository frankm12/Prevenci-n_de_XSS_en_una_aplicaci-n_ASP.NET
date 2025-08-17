<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Unsafe.aspx.cs" Inherits="XSSDemoWebForms.Unsafe" ValidateRequest="false" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Vista INSEGURA</title>
    <meta charset="utf-8" />
    <style>
        body{font-family:Segoe UI,Arial;margin:40px}
        .card{border:1px solid #ddd;padding:16px;border-radius:12px;max-width:820px}
        .w{width:100%}
        .preview{padding:12px;border:1px dashed #999;border-radius:8px;min-height:64px;margin-top:6px}
        a{color:#0a58ca}
        code{background:#f5f5f5;padding:2px 4px;border-radius:4px}
    </style>
</head>
<body>
<form id="form1" runat="server">
  <div class="card">
    <h2>Vista INSEGURA (sin protección)</h2>
    <p>Escribe algo (incluso HTML/JS):</p>
    <asp:TextBox ID="txtInput" runat="server" TextMode="MultiLine" Rows="4" CssClass="w" />
    <br /><br />
    <asp:Button ID="btnRender" runat="server" Text="Renderizar sin protección" OnClick="btnRender_Click" />
    <h3>Render en HTML sin encoding:</h3>
    <div class="preview">
      <asp:Literal ID="litRaw" runat="server" />
    </div>

    <h3>Inyección en atributo <code>title</code> (peligroso):</h3>
    <asp:Literal ID="litAttr" runat="server" />

    <p style="margin-top:16px"><a href="Default.aspx">↩ Volver</a></p>
  </div>
</form>
</body>
</html>
