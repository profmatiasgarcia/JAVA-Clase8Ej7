<%--
 * @author Prof Matias Garcia.
 * <p> Copyright (C) 2022 para <a href = "https://www.profmatiasgarcia.com.ar/"> www.profmatiasgarcia.com.ar </a>
 * - con licencia GNU GPL3.
 * <p> Este programa es software libre. Puede redistribuirlo y/o modificarlo bajo los términos de la
 * Licencia Pública General de GNU según es publicada por la Free Software Foundation, 
 * bien con la versión 3 de dicha Licencia o bien (según su elección) con cualquier versión posterior. 
 * Este programa se distribuye con la esperanza de que sea útil, pero SIN NINGUNA GARANTÍA, 
 * incluso sin la garantía MERCANTIL implícita o sin garantizar la CONVENIENCIA PARA UN PROPÓSITO
 * PARTICULAR. Véase la Licencia Pública General de GNU para más detalles.
 * Debería haber recibido una copia de la Licencia Pública General junto con este programa. 
 * Si no ha sido así ingrese a <a href = "http://www.gnu.org/licenses/"> GNU org </a>
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Página de Registro</title>
</head>
<body>
    <%@ page import="Datos.EscribeArchivo, Negocio.Alumno" %>
    <% 
        String nombre = request.getParameter("nombre");
        String apellidos = request.getParameter("apellidos");
        double promedio = Double.parseDouble(request.getParameter("prom"));
        Alumno alumno = new Alumno(nombre, apellidos, promedio);
        String path = request.getServletContext().getRealPath("") + "WEB-INF/promedios.txt";
        EscribeArchivo.add(alumno, path);
    %>
    <h2>Tu registro se hizo con éxito</h2>
    <form action="index.jsp" method="post">
        <input type="submit" value="Nuevo Registro">
    </form>
</body>
</html>
