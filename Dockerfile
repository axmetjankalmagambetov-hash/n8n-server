FROM n8nio/n8n:latest

USER root

ENTRYPOINT ["sh", "-c", "chown -R 1000:1000 $N8N_USER_FOLDER && exec gosu node n8n"]
