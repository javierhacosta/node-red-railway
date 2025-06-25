FROM nodered/node-red:latest
# Instala Dashboard y MySQL
RUN npm install --no-update-notifier --no-fund --no-audit \
node-red-dashboard \
node-red-node-mysql


EXPOSE 1880
