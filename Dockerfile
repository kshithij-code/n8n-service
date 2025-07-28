# Extend the official n8n image
FROM n8nio/n8n:latest

# Install your desired community node
RUN npm install --omit=dev --no-audit --prefer-offline --legacy-peer-deps \
    -g @tavily/n8n-nodes-tavily

# Rebuild to ensure the node is picked up
RUN n8n install-nodes
