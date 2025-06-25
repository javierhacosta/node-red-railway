FROM nodered/node-red:latest
# Instala Dashboard, MySQL y ui_table
RUN npm install -g --no-update-notifier --no-fund --no-audit \
node-red-dashboard \
node-red-node-mysql \
node-red-contrib-ui-table


EXPOSE 1880
