package com.caja_ahorro.conexion;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class Conectar {
	 private final String url;
	    
	    public Conectar() {
	        this.url = "jdbc:postgresql://localhost:5432/caja_ahorro?"
	           +"user=postgres&password=postgres";
	    }
	    
	    public int isLogin(String usuario, String contrasenia){ 
            try {
                Class.forName("org.postgresql.Driver");
                Connection conexion = DriverManager.getConnection(url);
                Statement comando = conexion.createStatement();
                String sql = "SELECT idsocio FROM usuario WHERE usuario = '"+usuario+"' AND contrasenia = '"+contrasenia+"';";

                ResultSet resultado = comando.executeQuery(sql);
                 
                int login = -1;
                 while(resultado.next()){
                      login = resultado.getInt("idsocio");
                 }                    
                resultado.close(); 
                comando.close();
                conexion.close();
                return login;               
  } catch(Exception e) {
                System.out.println("error login: "+e.getMessage());
                return -1;
               }
 }
}
