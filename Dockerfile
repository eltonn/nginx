FROM nginx

RUN rm /etc/nginx/nginx.conf
COPY nginx.conf /etc/nginx/nginx.conf
RUN mkdir -p /etc/nginx/sites-available /etc/nginx/sites-enabled
COPY infodengue.conf /etc/nginx/sites-available/infodengue.conf
RUN ln -s /etc/nginx/sites-available/infodengue.conf /etc/nginx/sites-enabled/infodengue.conf
