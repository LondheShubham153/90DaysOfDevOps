FROM nginx:alpine
LABEL Project="wordpress"
COPY nginx.conf /etc/nginx/nginx.conf
ENV PORT=80
EXPOSE $PORT
ENTRYPOINT [ "nginx" ]
CMD ["-g", "daemon off;"]