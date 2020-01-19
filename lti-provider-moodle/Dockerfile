FROM mhart/alpine-node:12

USER root

# Install mongodb and dependencies
RUN apk add mongodb make python g++ bash
RUN mkdir -p /data/db

WORKDIR /app

ADD package.json package-lock.json ./

ADD index.js ./

ADD public ./public

ADD run.sh ./

RUN chmod +x run.sh

RUN npm ci --prod

ENV DB_HOST=localhost
ENV DB_DATABASE=ltimoodle
ENV LTI_KEY=LTI_KEY
ENV MOODLE_URL=http://localhost/moodle
ENV DEBUG=provider:*

ENTRYPOINT [ "./run.sh" ]

EXPOSE 3000