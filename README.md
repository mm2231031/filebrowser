# filebrowser

用alpine实现的filebrowser，添加了unrar p7zip unzip zip 等命令

## 使用方式

### 直接运行

    docker run -p 8080:80 -v [confdir]:/config -v [date01]:/opt/data01 -v [dateN]:/opt/dataN -d jackmo233/filebrowser:latest

### 使用docker-compose或docker stack

    version: '3'
    services:
      filebrowser:
        image: jackmo233/filebrowser:latest
        restart: unless-stopped
        container_name: filebrowser
	ports:
	  - 8080:80
	volumes:
	  - [confdir]:/config
	  - [date01]:/opt/data01
	  - [dateN]:/opt/dataN


