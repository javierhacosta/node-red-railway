FROM nodered/node-red:latest
# Instala Dashboard, MySQL y ui_table
RUN npm install --unsafe-perm --no-update-notifier --no-fund --no-audit \
node-red-dashboard \
node-red-node-mysql \
node-red-contrib-ui-table
#Copia package.json al directorio de datos de Node-RED
COPY package.json .


EXPOSE 1880
