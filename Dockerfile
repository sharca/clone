FROM base/archlinux

RUN pacman -Syu --noconfirm && pacman -S bash unzip nano tor python2-gevent python2-msgpack python2-pyopenssl --noconfirm && paccache -r -k 0
COPY inits /sbin/inits 
RUN chmod +x /sbin/inits
RUN mkdir -p /lonp && chmod g+ws /lonp

 WORKDIR /lonp

 ENTRYPOINT ["/sbin/inits"]

#Expose ports
EXPOSE 41022 13943

#ENTRYPOINT /entrypoint.sh

CMD /entrypoint.sh



