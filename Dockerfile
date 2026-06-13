FROM n8nio/n8n:latest

USER root

ENTRYPOINT ["sh", "-c", "chown -R node:node $N8N_USER_FOLDER && chmod -R 755 $N8N_USER_FOLDER && su-exec node n8n"]
