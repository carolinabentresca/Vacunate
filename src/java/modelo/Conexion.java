package modelo;

import org.springframework.jdbc.datasource.DriverManagerDataSource;

public class Conexion {

    public DriverManagerDataSource Conectar() {

        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName("org.apache.derby.jdbc.ClientDriver");
        dataSource.setUrl("jdbc:derby://localhost:1527/vacunate");
        dataSource.setUsername("root");
        dataSource.setPassword("root");

        return dataSource;
    }
}
