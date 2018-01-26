# Tiny little surge image that can run surge.sh
#
# Alice Kaerast

FROM node:alpine

RUN apk add -U --no-cache shadow su-exec 
RUN npm -g install surge
RUN useradd -ms /bin/sh user

COPY entrypoint.sh /bin/entrypoint.sh

WORKDIR /usr/src/app

ENTRYPOINT [ "/bin/entrypoint.sh" ]
