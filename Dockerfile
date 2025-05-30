FROM alpine:3.22

ENV TZ=Asia/Shanghai

RUN apk add --no-cache tzdata nginx && \
    rm -rf /var/cache/apk/* /tmp/*

COPY --chmod=755 ./rootfs /

EXPOSE 80

ENTRYPOINT ["nginx"]
CMD ["-g", "daemon off;"]