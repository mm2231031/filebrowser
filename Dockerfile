FROM filebrowser/filebrowser:v2 as file

FROM alpine:latest
COPY --from=file /filebrowser /filebrowser

COPY .docker.json /.filebrowser.json
RUN apk --update --purge add unrar  p7zip zip unzip 

VOLUME /srv
VOLUME /config
EXPOSE 80


ENTRYPOINT [ "/filebrowser" ]
