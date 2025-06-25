FROM nodered/node-red:latest
# Instala Dashboard, MySQL y ui_table
RUN npm install -g --no-update-notifier --no-fund --no-audit \
node-red-dashboard \
node-red-node-mysql \
node-red-contrib-ui-table
#Copia package.json al directorio de datos de Node-RED
COPY package.json /data/package.json

#Entra en /data e instala las dependencias listadass en package,json
RUN cd /data && npm install --production

EXPOSE 1880
