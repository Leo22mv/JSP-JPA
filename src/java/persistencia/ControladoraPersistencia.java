package persistencia;

import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import logica.Usuario;
import persistencia.exceptions.NonexistentEntityException;

public class ControladoraPersistencia {
    
    UsuarioJpaController userJPA = new UsuarioJpaController();
    
    public void crearUser (Usuario user) {
        userJPA.create(user);
    }
    
    public void eliminarUser (int id) {
        try {
            userJPA.destroy(id);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void eliminarUser (Usuario user) {
        try {
            userJPA.destroy(user.getId());
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public List<Usuario> traerUsuarios () {
        return userJPA.findUsuarioEntities();
    }
    
}