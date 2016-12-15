# Ferramenta de deploy para desenvolvedores

## Para utilizar ##

- instale o docker em sua maquina:
https://docs.docker.com/engine/installation/

- instale o docker-compose(para linux):
https://docs.docker.com/compose/install/

- clone este repositório
- desative o apache ou qualquer aplicativo utilizando a porta 80 e 443
- dentro da pasta clonada digite:

`sudo docker-compose build`

`sudo docker-compose up`

- adicione ao arquivo hosts da sua maquina

`127.0.0.1  modelo.photobookfinal.com`

`127.0.0.1  photobookfinal.com`

- abra o navegado em modelo.photobookfinal.com

- pronto
