FROM zerotier/zerotier:1.8.4

RUN DEBIAN_FRONTEND=noninteractive apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y iptables \
    && rm -rf /var/lib/apt/lists/*

COPY ./zerotier-entrypoint.sh  /zerotier-entrypoint.sh
RUN chmod 755 /zerotier-entrypoint.sh

ENTRYPOINT ["/zerotier-entrypoint.sh"]
