FROM httpd:latest
RUN yum install -y 
COPY scheduled-task.sh .
COPY script.sh .
WORKDIR  /var/wwww/html/appgate/testpage
RUN  touch index.html
ENTRYPOINT [ "/scheduled-task.sh" ]
CMD [".sh","scheduled-task.sh" ]
EXPOSE 80
