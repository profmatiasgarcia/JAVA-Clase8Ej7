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
<%@page import="Negocio.Alumno, java.util.ArrayList" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Alumnos Registrados</title>
</head>
<body>   
    <h2>Los alumnos que están registrados son: </h2>
    <%
        ArrayList<Alumno> alumnos = null;
        alumnos = (ArrayList<Alumno>)request.getAttribute("Alumnos");
        String numReg= (String) request.getAttribute("contador");
        int numRegistros = Integer.parseInt(numReg);
    %>
    <table border="1">
        <tr>
            <th>Nombre</th>
            <th>Apellidos</th>
            <th>Promedio</th>
        </tr>
        <%
            for (Alumno alumno: alumnos) {
        %>
        <tr valign="top">
            <td><%=alumno.getNombre() %></td>
            <td><%=alumno.getApellidos() %></td>
            <td><%=alumno.getPromedio() %></td>
        </tr>
        <% } %>
        <% alumnos.clear();%>
    </table>
    <p> Numero de registros : <%= numRegistros %></p>
    <br>
    <form action="index2.jsp" method="post">
        <input type="submit" value="Regresar">
    </form>
</body>
</html>