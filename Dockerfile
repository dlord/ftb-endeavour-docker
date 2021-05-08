FROM dlord/minecraft:java15

ENV MINECRAFT_STARTUP_JAR=forge-1.16.5-36.1.4.jar \
    MINECRAFT_VERSION=1.16.5

RUN curl -SL https://api.modpacks.ch/public/modpack/80/2046/server/linux > /tmp/setup \
    && chmod +x /tmp/setup \
    && cd /usr/src/minecraft \
    && /tmp/setup 80 2046 --auto \
    && find /usr/src/minecraft -name "*.log" -exec rm -f {} \; \
    && rm -rf /usr/src/minecraft/ops.* /usr/src/whitelist.* /usr/src/minecraft/logs/* /tmp/*
