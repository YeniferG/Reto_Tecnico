Cordial saludo,

- Para realizar el desarrollo del reto utilice el lenguaje de programación java trabajando sobre el IDE Intellij y con el gestor de base de datos Mysql.

- Para realizar la conexión con la BBDD utilice el Framework Hibernate y JPA.

- En la ruta src/main/resources/BBDD ubicada en la estructura del proyecto encontraran un archivo .sql 
  equivalente a la base de datos con la que realice el reto tecnico, para su respectiva ejecución.
  
- En la ruta src/main/resources/META-INF ubicada en la estructura del proyecto encontraran un archivo .xml
  equivalente a la persistencia con la base de datos. Para que el proyecto se ejecute sin problemas hay que configurar la información
  correspondiente a la conexion con la base de datos mysql en el archivo mencionado anteriormente, para lo anterior hay que verificar los siguientes datos de acceso:
  - Driver = (javax.persistence.jdbc.driver)
  - Usuario = (javax.persistence.jdbc.user)
  - Contraseña = (javax.persistence.jdbc.password)
  - Url = (javax.persistence.jdbc.url value="jdbc:mysql://localhost:3306/concurso")
