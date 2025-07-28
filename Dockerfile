FROM n8nio/n8n:latest

# Set working directory to where n8n expects custom modules
WORKDIR /data

# Install the Tavily node package locally
RUN npm install @tavily/n8n-nodes-tavily --omit=dev --legacy-peer-deps

