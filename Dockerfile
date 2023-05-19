# Use the latest tfc-agent image from HashiCorp
FROM hashicorp/tfc-agent:latest
# Create the directory for tfc-agent
RUN mkdir -p /home/tfc-agent/.tfc-agent
# Add your hooks directory to the image and set its ownership
ADD --chown=tfc-agent:tfc-agent hooks /home/tfc-agent/.tfc-agent/hooks
