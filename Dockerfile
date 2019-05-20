FROM filebrowser/filebrowser:v2 as file

FROM alpine:latest
COPY --from=file /filebrowser /filebrowser

COPY .docker.json /.filebrowser.json
#RUN tar xvf /root/rarlinux-x64-5.7.1.tar.gz -C /root &&  cp /root/rar/rar /usr/bin/rar && cp /root/rar/unrar /usr/bin/unrar &&chmod +x /usr/bin/*rar && apk --update add libstdc++ libgcc zip unzip &&rm -rf /root/*
RUN apk --update --purge add unrar  p7zip zip unzip 

VOLUME /srv
VOLUME /config
EXPOSE 80


ENTRYPOINT [ "/filebrowser" ]
