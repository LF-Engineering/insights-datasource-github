FROM alpine:3.14
WORKDIR /app
ENV GITHUB_ORG='<GITHUB-ORG>'
ENV GITHUB_REPO='<GITHUB-REPO>'
ENV GITHUB_CATEGORIES='<GITHUB-CATEGORY>'
ENV ES_URL='<GITHUB-ES-URL>'
ENV STAGE='<STAGE>'
ENV ELASTIC_LOG_URL='<ELASTIC-LOG-URL>'
ENV ELASTIC_LOG_USER='<ELASTIC-LOG-USER>'
ENV ELASTIC_LOG_PASSWORD='<ELASTIC-LOG-PASSWORD>'
ENV GITHUB_TOKENS='<GITHUB-TOKENS>'
ENV GITHUB_SOURCE_ID='<GITHUB_SOURCE_ID>'
ENV FETCH_PAGES='<FETCH_PAGES>'
# RUN apk update && apk add git
RUN apk update && apk add --no-cache bash
RUN ls -ltra
COPY github ./
CMD ./github --github-org=${GITHUB_ORG} --github-repo=${GITHUB_REPO} --github-es-url=${ES_URL} --github-categories=${GITHUB_CATEGORIES} --github-tokens=${GITHUB_TOKENS} --github-source-id=${GITHUB_SOURCE_ID}
