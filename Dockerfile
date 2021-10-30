FROM debian
ENV HOME /root
COPY ./ProyectoParcial1.sh ./ProyectoParcial1.sh
RUN chmod 777 ProyectoParcial1.sh
ENTRYPOINT [ "/ProyectoParcial1.sh" ]

CMD /bin/bash ./ProyectoParcial1.sh ${opcion}