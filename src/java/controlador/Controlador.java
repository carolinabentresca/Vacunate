package controlador;

import modelo.Conexion;
import modelo.vacuna;
import java.util.List;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Controlador {

    Conexion conexion = new Conexion();
    JdbcTemplate jdbcTemplate = new JdbcTemplate(conexion.Conectar());
    ModelAndView mv = new ModelAndView();
    List datos;

    @RequestMapping(value = "index.htm", method = RequestMethod.GET)
    public ModelAndView menu() {
        mv.setViewName("index");
        return mv;
    }

    @RequestMapping(value = "registro.htm", method = RequestMethod.GET)
    public ModelAndView registro() {
        mv.addObject(new vacuna());
        mv.setViewName("registro");
        return mv;
    }

    @RequestMapping(value = "registro.htm", method = RequestMethod.POST)
    public ModelAndView registro(vacuna v) {
        String sql = "insert into vacuna(id,nombre,apellido,dni,vacuna,dosis)values(?,?,?,?,?,?)";
        try {
            this.jdbcTemplate.update(sql, v.getId(), v.getNombre(), v.getApellido(), v.getDni(), v.getVacuna(), v.getDosis());
            return new ModelAndView("redirect:/index.htm");
        } catch (DataAccessException e) {
            e.getMessage();
        }
        return mv;
    }

    @RequestMapping(value = "lista.htm", method = RequestMethod.GET)
    public ModelAndView lista() {
        String sql = "select id,nombre,apellido,dni,vacuna,dosis from vacuna";
        datos = this.jdbcTemplate.queryForList(sql);
        mv.addObject("lista", datos);
        mv.setViewName("lista");
        return mv;
    }
}
