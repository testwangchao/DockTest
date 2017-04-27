FROM nginx
RUN echo '<h1>Hello, Docker!</h1>' > /usr/share/nginx/html/index1.html;\
    echo `cat /usr/share/nginx/html/index1.html`

