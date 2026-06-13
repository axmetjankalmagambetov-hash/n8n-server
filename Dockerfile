FROM n8nio/n8n:latest

USER root
RUN mkdir -p /home/node/.n8n \
    && chown -R 1000:1000 /home/node/.n8n \
    && chmod 777 /home/node/.n8n

USER 1000

ENTRYPOINT ["tini", "--", "n8n"]
