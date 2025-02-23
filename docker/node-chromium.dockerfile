FROM uselagoon/node-16-builder

# Tell Puppeteer to skip installing Chrome. We'll be using the installed package.
ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true

RUN apk update \
    && apk add chromium \
    && rm -rf /var/cache/apk/*
