# Proyecto primer parcial
_Aplicacion sobre las diferentes metodologias de desarollo agil de software, utilizando:_
* _SCRUM, X.P., Kanban, Crystal_

## Getting Started
Para obtener una copia del proyecto de manera local se tendra que hacer una descarga del proyecto
* Descargas el proyecto en formato .zip
* Lo descomprimes en la carpte de eleccion

### Prerequisites
Se esta trabajando en linux, por lo que los ejemplos se basaran en el.
* Para instalar bash se tienen que ejecutar los siguientes comando en la terminal
```
sudo apt update
sudo apt-get install bash
```
Se utiliza "Docker", para ello se tiene que instalar tambien
* Primero verificamos si esta instalado, de ser asi nos aparecera la version
```
docker version
```
* Si no, procedemos a instalarlo
```
sudo apt update
sudo apt-get install docker-ce
```
### Installing
Abrimos la terminal de preferencia, para ejecutarlo tenemos que estar en el directorio donde se encuentra el archivo, por ejemplo:

```
cd carpeta/scripts/
```
Si es la primera ves que se ejecuta se tendran que dar permisos al archivo
```
sudo chmod +x "archivo".sh
```
Luego se ejecuta ahi mismo
```
./"archivo".sh
```
## Running the test
Ejemplos de como se ejecuta el programa
./ProyectoParcial1.sh $Parametro

Ejemplo: 
./ProyectoParcial1.sh t

Bienvenido a la guía rápida de Metodologías Tradicionales, para continuar seleccione un tema:
            1.-Cascada
            2.-Espiral
            3.-Modelo V
            4.-Exit
            
Ingrese la opcion: 2

Usted esta en la sección de Espiral, seleccione la opción que desea utilizar.
            1.-Agregar información
            2.-Buscar
            3.-Eliminar información
            4.-Leer base de información.
            5.-Exit                    
Ingrese la opcion: 4

IMPRIMIR EL ARCHIVO
Esta es la informacion disponible hasta ahora: 

[titulo].-Desarrollo en espiral
[descripcion].- El modelo de desarrollo en Espiral es una combinación entre el modelo waterfall y un modelo por iteraciones.
[ventajas].- La funcionalidad adicional o los cambios se pueden hacer en una etapa posterior; La estimación del coste se hace fácil, ya que la construcción del prototipo se hace en pequeños fragmentos.


Bienvenido a la guía rápida de Metodologías Tradicionales, para continuar seleccione un tema:
            1.-Cascada
            2.-Espiral
            3.-Modelo V
            4.-Exit
            
Ingrese la opcion: 4

## Installing Docker

sudo docker build .
sudo docker build -t nombreImagen
sudo docker run -dti -p 8080:30 nombreImagen
sudo docker login
sudo docker push nombreRepositorio:tagname 

## Authors:
* **Irvin Daniel Campos Valenzuela** _329762_-_Student_- [DanielCampos](https://gitlab.com/a329762)
* **Alan Said Sánchez Sausameda** _307730_ - _Student_ - [SaidSanchez](https://github.com/SaidSanchez)
* **Jesica Yamile Salcido Cadena** _329575_ - _Student_ - [JYSC](https://github.com/JYSC)
* **David Alejandro Perez Rico** _320753_ - _Student_ - [alexxrico](https://github.com/alexxrico)

## License
This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

DockerHub
https://hub.docker.com/repository/docker/danielcampos1/proyectoparcial1
GitLab
https://gitlab.com/SaidSanchez/dbp_pp1/-/merge_requests/1
GitHub
https://github.com/SaidSanchez/DBP_PP1/tree/main
BitBucket
https://bitbucket.org/SaidSanchez/dbp_pp/src/main/README.md