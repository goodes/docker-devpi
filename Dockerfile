FROM python:2.7
RUN pip install -U devpi-server
RUN mkdir -p /mnt

VOLUME /mnt
EXPOSE 3141
ENTRYPOINT ["/usr/local/bin/devpi-server"]
CMD ["--host", "0.0.0.0", "--serverdir", "/mnt"]
