FROM alpine

COPY ./mcphost /usr/bin/mcphost

ENTRYPOINT ["/usr/bin/mcphost"]
