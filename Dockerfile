# Dockerfile

# Define the build argument TAG with a default value
ARG TAG=6.1.1

# Use the ARG in the FROM statement
FROM ghcr.io/k4yt3x/video2x:${TAG}

# Set working directory
WORKDIR /app

# Copy the entrypoint script
COPY entrypoint.sh /app/entrypoint.sh
RUN chmod +x /app/entrypoint.sh

# Set entrypoint
ENTRYPOINT ["/app/entrypoint.sh"]

# Set default command
CMD ["--help"]
