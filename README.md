# Ferramenta de deploy para desenvolvedores

## Configuraçes basicas ##
- instale o docker em sua maquina:
https://docs.docker.com/engine/installation/
- instale o docker-compose(para linux):
https://docs.docker.com/compose/install/
- clone este repositório
- desative o apache ou qualquer aplicativo utilizando a porta 80, 443 e 3306
- entre na pasta clonada
- adicione ao arquivo hosts da sua maquina:

`127.0.0.1  modelo.photobookfinal.com`

`127.0.0.1  fotogea.photobookfinal.com`

`127.0.0.1  photobookfinal.com`

- crie um alias para um ip estatico (para mac):

`sudo ifconfig lo0 alias 10.254.254.254`

- crie um alias para um ip estatico (para alguns linux):

`sudo ifconfig eth0 alias 10.254.254.254`

## Para iniciar o banco ##
- entre na pasta database
- digite:

`sudo docker-compose build`

`sudo docker-compose up`

## Para iniciar o blog ##
- entre na pasta web
- dentro da pasta src cole a pasta blog
- remova os folders app/cache e app/logs do blog
- digite:

`sudo docker-compose build`

`sudo docker-compose up`

- abra o navegador em modelo.photobookfinal.com
- pronto
