#!/bin/bash

#
opcion=""
opcion2=""

nombresAgiles=('SCRUM' 'X_P' 'Kanban' 'Crystal')
nombresTradicionales=('Cascada' 'Espiral' 'Modelo_V')
#Menu Metodologias Agiles
case $1 in
    -a|-A|a|A) #
        until [[ $opcion == "5" ]]; do
            echo
            echo "Bienvenido a la guía rápida de Agile, para continuar seleccione un tema:
            1.-SCRUM
            2.-X.P.
            3.-Kanban
            4.-Crystal
            5.-Exit
            "
            read -p "Ingrese la opcion: " opcion
            clear
            case $opcion in
                1|2|3|4)
            echo
            echo "Usted esta en la sección de ${nombresAgiles[opcion - 1]}, seleccione la opción que desea utilizar.
            1.-Agregar información
            2.-Buscar
            3.-Eliminar información
            4.-Leer base de información.
            5.-Exit                    "
                    read -p "Ingrese la opcion: " opcion2
                    clear
                    case $opcion2 in
                        1)  echo "AGREGAR INFORMACION"
                            touch ${nombresAgiles[opcion-1],,}.inf
                            read -p "Introduzca el titulo del concepto: " titulo
                            echo ''
                            read -p "Agregue la definicion del concepto: " descripcion
                            echo "[$titulo] .- $descripcion" >> ./${nombresAgiles[opcion-1],,}.inf
                            echo ''
                            echo ''
                            ;;
                        2)  echo "OPCION DE BUSCAR"
                            if [ -f ./${nombresAgiles[opcion-1],,}.inf ]
                            then
                                read -p "Ingrese el concepto que desea buscar: " buscar
                                echo "Estos son los resultados encontrados: "
                                echo ''
                                grep -i $buscar ./${nombresAgiles[opcion-1],,}.inf
                                echo ''
                            else
                                echo "El archivo no existe"
                            fi
                            ;;

                        3)
                            echo
                            echo "ELIMINAR INFORMACION"
                            if [ -f ./${nombresAgiles[opcion-1],,}.inf ]
                            then
                                read -p "Ingrese el concepto que desea eliminar: " buscar
                                sed -i "/$buscar/d" ${nombresAgiles[opcion-1],,}.inf
                                echo "El dato a sido eliminado de ${nombresAgiles[opcion-1]}"
                            else
                                echo "El archivo no existe"
                            fi
                            ;;
                        4)  echo
                            echo "IMPRIMIR EL ARCHIVO"
                            if [ -f ./${nombresAgiles[opcion-1],,}.inf ]
                            then
                                echo "Esta es la informacion disponible hasta ahora: "
                                echo ''
                                cat ${nombresAgiles[opcion-1],,}.inf
                                echo''
                            else
                                echo "El archivo no existe"
                            fi
                            ;;
                    esac
                    ;;
            esac
        done
        ;;
        -t|-T|t|T) #
        until [[ $opcion == "4" ]]; do
            echo
            echo "Bienvenido a la guía rápida de Metodologías Tradicionales, para continuar seleccione un tema:
            1.-Cascada
            2.-Espiral
            3.-Modelo V
            5.-Exit
            "
            read -p "Ingrese la opcion: " opcion
            clear
            case $opcion in
                1|2|3)
            echo
            echo "Usted esta en la sección de ${nombresTradicionales[opcion - 1]}, seleccione la opción que desea utilizar.
            1.-Agregar información
            2.-Buscar
            3.-Eliminar información
            4.-Leer base de información.
            5.-Exit                    "
                    read -p "Ingrese la opcion: " opcion2
                    clear
                    case $opcion2 in
                        1)  echo "AGREGAR INFORMACION"
                            touch ${nombresTradicionales[opcion-1],,}.inf
                            read -p "Introduzca el titulo del concepto: " titulo
                            echo ''
                            read -p "Agregue la definicion del concepto: " descripcion
                            echo "[$titulo] .- $descripcion" >> ./${nombresTradicionales[opcion-1],,}.inf
                            echo ''
                            ;;
                        2)  echo "OPCION DE BUSCAR"
                            if [ -f ./${nombresTradicionales[opcion-1],,}.inf ]
                            then
                                read -p "Ingrese el concepto que desea buscar: " buscar
                                echo "Estos son los resultados encontrados: "
                                echo ''
                                grep -i $buscar ./${nombresTradicionales[opcion-1],,}.inf
                                echo ''
                            else
                                echo "El archivo no existe"
                            fi
                            ;;

                        3)
                            echo
                            echo "ELIMINAR INFORMACION"
                            if [ -f ./${nombresTradicionales[opcion-1],,}.inf ]
                            then
                                read -p "Ingrese el concepto que desea eliminar: " buscar
                                sed -i "/$buscar/d" ${nombresTradicionales[opcion-1],,}.inf
                                echo "El dato a sido eliminado de ${nombresTradicionales[opcion-1]}"
                            else
                                echo "El archivo no existe"
                            fi
                            ;;
                        4)  echo
                            echo "IMPRIMIR EL ARCHIVO"
                            if [ -f ./${nombresTradicionales[opcion-1],,}.inf ]
                            then
                                echo "Esta es la informacion disponible hasta ahora: "
                                echo ''
                                cat ${nombresTradicionales[opcion-1],,}.inf
                                echo''
                            else
                                echo "El archivo no existe"
                            fi
                            ;;
                    esac
                    ;;
            esac
        done
        ;;

    *)
        echo "No existe esa opcion"
        ;;
esac
