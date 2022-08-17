/**
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
 **/
package Datos;

import java.io.*;
import java.util.ArrayList;
import Negocio.Alumno;

public class LeeArchivo {

    private static int cont = 0;
    private static File archivo;
    private static FileReader fr;
    private static BufferedReader br;
    static ArrayList<Alumno> alumnos = new ArrayList<Alumno>();

    public static ArrayList<Alumno> leeAlumnos(String path) {
        try {
            archivo = new File(path);
            fr = new FileReader(archivo);
            br = new BufferedReader(fr);
            String linea = null;
            String[] tokensLinea = null;
            String nombre;
            String apellido;
            Double promedio;
            Alumno alumno;
            linea = br.readLine();
            while (linea != null) {
                tokensLinea = linea.split(",");
                nombre = tokensLinea[0];
                apellido = tokensLinea[1];
                promedio = Double.parseDouble(tokensLinea[2]);
                alumno = new Alumno(nombre, apellido, promedio);
                alumnos.add(alumno);
                cont++;
                linea = br.readLine();
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (null != fr) {
                    fr.close();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return alumnos;
    }

    public static int getCont() {
        return cont;
    }

    public static void clearCont() {
        cont = 0;
    }
}
