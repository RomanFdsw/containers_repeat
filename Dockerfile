FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.edtjtit.mongodb.net
ENV MONGODB_USERNAME romandusiv_db_user
ENV MONGODB_PASSWORD 9dll5kTTi2Qo2BKw

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]