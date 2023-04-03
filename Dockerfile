FROM nginx:alpine
COPY ./nginx.conf /etc/nginx/conf.d/default.conf
RUN mkdir /usr/share/nginx/json
ADD --chmod=+x https://raw.githubusercontent.com/crhallberg/json-against-humanity/v2.0/cah-all-compact.json /usr/share/nginx/json/jsonagainst.json
RUN cat /usr/share/nginx/json/jsonagainst.json > /usr/share/nginx/json/cah-all-compact.json
