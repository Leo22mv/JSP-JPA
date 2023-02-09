package logica;

import java.util.List;
import persistencia.ControladoraPersistencia;

public class Controladora {
    
    ControladoraPersistencia controlPersis = new ControladoraPersistencia();
    
    public void crearUser (Usuario user) {
        controlPersis.crearUser(user);
    }
    
    public void eliminarUser (int id) {
        controlPersis.eliminarUser(id);
    }
    
    public void eliminarUser (Usuario user) {
        controlPersis.eliminarUser(user);
    }
    
    public List<Usuario> traerUsuarios () {
        return controlPersis.traerUsuarios();
    }
    
}
