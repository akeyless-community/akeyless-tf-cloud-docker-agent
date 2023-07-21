# Use the latest tfc-agent image from HashiCorp
FROM hashicorp/tfc-agent:latest
# Create the directory for tfc-agent
RUN mkdir -p /home/tfc-agent/.tfc-agent
# Copy the hooks directory to the image and set its ownership
COPY hooks /home/tfc-agent/.tfc-agent/hooks
RUN chown -R tfc-agent:tfc-agent /home/tfc-agent/.tfc-agent/hooks
# Make the files in the hooks directory executable
RUN chmod -R +x /home/tfc-agent/.tfc-agent/hooks/
