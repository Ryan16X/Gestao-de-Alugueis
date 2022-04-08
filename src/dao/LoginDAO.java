
package dao;

import factory.Conexao;
import gui.CadastroUsuario;
import gui.Login;
import gui.MenuAtendente;
import gui.MenuCliente;
import gui.MenuPrincipal;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import model.Usuario;


public class LoginDAO {
    
    private Connection connection;
    private int id;
    private String username;
    private String senha;
    private String perfil;
    private Login gui;
    private CadastroUsuario cu;
    
    
     
     
     
     public LoginDAO(Login gui){ 
        this.connection = new Conexao().getConnection();
        this.gui = gui;
    
     }
    
     
     public void logar(){
       
         
         String username = gui.getTxtUsername().getText();
         String senha = gui.getTxtSenha().getText();
         
         try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
        try (Connection conn = (Connection) 
                
                DriverManager.getConnection("jdbc:mysql://localhost:3306/gestão?useTimezone=true&serverTimezone=UTC","root","123456789"); 
                Statement stmt = (Statement) conn.createStatement()) {

            String query = "select * from usuarios where username = '" + username +"' and senha = '" + senha + "'";

                try (ResultSet rs = stmt.executeQuery(query)) {
                    if (rs.next()) {
                        
                       String perfil = rs.getString("perfil");
       
                        if("Administrador".equals(perfil)){
                           JOptionPane.showMessageDialog(null,"Conectado com sucesso! Seja Bem-Vindo!");
                           MenuPrincipal menu = new MenuPrincipal();
                           menu.setVisible(true);
                           this.gui.dispose();
                        }
                        
                        else if("Atendimento".equals(perfil)){
                           JOptionPane.showMessageDialog(null,"Conectado com sucesso! Seja Bem-Vindo!");
                           MenuAtendente recepcao = new MenuAtendente();
                           recepcao.setVisible(true);
                           this.gui.dispose();
                        }
                        
                        else if("Cliente".equals(perfil)){
                           JOptionPane.showMessageDialog(null,"Conectado com sucesso! Seja Bem-Vindo!");
                           MenuCliente med = new MenuCliente();
                           med.setVisible(true);
                           this.gui.dispose();
                        }
                        
                        else if("Ténico".equals(perfil)){
                           JOptionPane.showMessageDialog(null,"Conectado com sucesso! Seja Bem-Vindo!");
                           MenuAtendente med = new MenuAtendente();
                           med.setVisible(true);
                           this.gui.dispose();
                        }
                        
                        else if("Marketing".equals(perfil)){
                           JOptionPane.showMessageDialog(null,"Conectado com sucesso! Seja Bem-Vindo!");
                           MenuAtendente med = new MenuAtendente();
                           med.setVisible(true);
                           this.gui.dispose();
                        }
                        
                        else if("Entregador".equals(perfil)){
                           JOptionPane.showMessageDialog(null,"Conectado com sucesso! Seja Bem-Vindo!");
                           MenuPrincipal med = new MenuPrincipal();
                           med.setVisible(true);
                           this.gui.dispose();
                        }
                    }
                    

                    else {
                        JOptionPane.showMessageDialog(null,"Usuário ou senha incorretos! Tente Novamente!");
                        gui.getTxtUsername().setText("");
                        gui.getTxtSenha().setText("");
                        
                    }   
                }
        
                    //caso seja preciso mais tipos de acesso, copie e cole o código do IF para cada cargo

    
        }
        } catch (SQLException | ClassNotFoundException | InstantiationException | IllegalAccessException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }

        
   }
     
     
     
    
}
