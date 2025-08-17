<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>XSS Demo Home</title>
    <meta charset="utf-8" />
    <style>
        body{font-family:Segoe UI,Arial;margin:40px}
        .card{border:1px solid #ddd;padding:16px;border-radius:12px;max-width:720px}
        a.btn{display:inline-block;padding:10px 14px;margin:6px 8px 0 0;text-decoration:none;border:1px solid #444;border-radius:8px}
        .warn{color:#b00020}
        .small{color:#555;font-size:13px}
    </style>
</head>
<body>
<form id="form1" runat="server">
  <div class="card">
    <h1>Demostración de XSS en Web Forms</h1>
    <p>Elige un modo:</p>
    <p>
      <a class="btn" href="Unsafe.aspx">Vista <b>INSEGURA</b></a>
      <a class="btn" href="Safe.aspx">Vista <b>PROTEGIDA</b></a>
    </p>
    <p class="warn">⚠️ Ejecuta esto solo en tu entorno local.</p>
    <p class="small">Inyecta ejemplos como: <code>&lt;script&gt;alert('XSS')&lt;/script&gt;</code></p>
  </div>
</form>
</body>
</html>
