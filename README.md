**Clonar el repositorio necesario para realizar el desafio:**

git clone https://github.com/roxsross/challenge-linux-bash

**Instalar Node.js y npm**

sudo apt install nodejs npm

**Posicionados en el home, descargar de Node 14**

curl -sL https://deb.nodesource.com/setup_14.x -o node_setup.sh

**Instalar Node 14**

sudo bash node_setup.sh

**Instalar gcc, g++ y make**

sudo apt install gcc g++ make

**Finalizar el proceso de instalación de la versión 14 de Node**

sudo apt install -y nodejs

**Agregar el usuario nodejs si todavía no lo creaste**

sudo adduser nodejs

**En la carpeta de src/, ejecutar el archivo server.js**

node server.js

**Crear un archivo de configuración para el servicio de Node**

sudo nano /lib/systemd/system/devops.service

**Una vez creado el archivo, llenarlo con la siguiente información**

[Unit]

Description=Balanceo para desafio Final

Documentation=https://github.com/roxsross/challenge-linux-bash

After=network.target

[Service]

Environment=PORT=%i

Type=simple

User=nodejs

WorkingDirectory=/home/ubuntu/challenge-linux-bash

ExecStart=/usr/bin/node /home/ubuntu/challenge-linux-bash/server.js

Restart=on-failure

[Install]

WantedBy=multi-user.target
