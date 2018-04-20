FROM base/archlinux
ENV CONFIG_JSON1=none CONFIG_JSON2=none UUID=91cb66ba-a373-43a0-8169-33d4eeaeb857 CONFIG_JSON3=none CERT_PEM=none KEY_PEM=none VER=3.19
RUN pacman -Syu --noconfirm && pacman -S bash unzip nano tor python2-gevent python2-msgpack python2-pyopenssl --noconfirm && paccache -r -k 0
ADD inits /inits
RUN chmod +x /inits
RUN mkdir -p /lonp && chmod g+ws /lonp
WORKDIR /lonp
#ENTRYPOINT ["/sbin/inits"]
#Expose ports
#ENTRYPOINT /entrypoint.sh
CMD /inits
# EXPOSE 41022 13943
EXPOSE 8080


