FROM python:3.11-slim

WORKDIR /app

# Install mcp-neo4j-memory
RUN pip install mcp-neo4j-memory==0.4.1

# Expose port
EXPOSE 8000

# Start the server
CMD ["python", "-m", "mcp_neo4j_memory"]
