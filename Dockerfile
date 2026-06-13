FROM n8nio/n8n:latest

USER root
RUN chown -R node:node /home/node/.n8n || true

USER node
