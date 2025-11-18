FROM python:3.11-slim
WORKDIR /app

# Install uv
RUN pip install uv

# Install mcp-neo4j-cypher using uv
RUN uv pip install --system mcp-neo4j-cypher

# Environment variables
ENV NEO4J_URL="neo4j+s://d13785de.databases.neo4j.io"
ENV NEO4J_USERNAME="neo4j"
ENV NEO4J_PASSWORD="kGjTlS0cWvJjAJkEU5982E04wfkGIWCNMJDcYG224PE"
ENV NEO4J_DATABASE="neo4j"
ENV NEO4J_TRANSPORT="https"
ENV NEO4J_MCP_SERVER_HOST="0.0.0.0"
ENV NEO4J_MCP_SERVER_PORT="8000"
ENV NEO4J_MCP_SERVER_PATH="/mcp/"
ENV NEO4J_MCP_SERVER_ALLOWED_HOSTS="*"

# Expose port
EXPOSE 8000

# Run the server
CMD ["uvx", "mcp-neo4j-cypher"]
