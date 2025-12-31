#Base Image menggunakan Node 10
FROM node:10-alpine
#Direktori Kerja
WORKDIR /home/app
#Install tools yang diperlukan
RUN npm install -g pm2 sequelize-cli
#Copy semua kode aplikasi
COPY . .
#Install dependency
RUN npm install
#Port
EXPOSE 5000
#Jalankan dengan PM2 Runtime
CMD ["pm2-runtime", "start", "npm", "--", "start"]
