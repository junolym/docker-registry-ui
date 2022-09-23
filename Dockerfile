FROM jc21/registry-ui:2.0.2 as builder
FROM alpine
RUN apk add --no-cache nodejs
ENV NODE_ENV=production
COPY --from=builder /app /app
WORKDIR /app
CMD node src/backend/index.js
