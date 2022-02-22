FROM httpd:latest
WORKDIR  /var/wwww/html/appgate/testpage
COPY scheduled-task.sh .
COPY script.sh .
RUN  touch index.html

CMD ["sh","scheduled-task.sh" ]
EXPOSE 80