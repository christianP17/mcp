FROM python:3.11-slim

WORKDIR /app

# Install uv (the package manager)
RUN pip install uv

# Install mcp-neo4j-memory using uv
RUN uv pip install --system mcp-neo4j-memory==0.4.1

# Expose port
EXPOSE 8000

# Run using the installed CLI command
CMD ["mcp-neo4j-memory"]
