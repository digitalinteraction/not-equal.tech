# # Start with a node image with package info
# # Then installs *all* npm packages and runs build script
# FROM node:18-alpine AS builder
# WORKDIR /app/
# ENV NODE_ENV=development
# COPY ["package*.json", "/app/"]
# RUN npm install -g pnpm@8 && pnpm install
# COPY [ ".", "/app/" ]
# ENV NODE_ENV=production
# RUN pnpm generate

# FROM nginx:1-alpine AS dist
# COPY --from=builder --chown=nginx:nginx ["/app/.output/public/", "/usr/share/nginx/html/"]

# 
# NOTE: I couldn't get it running in a container, run the build with `pnpm generate` first
# 

FROM nginx:1-alpine AS dist
COPY --chown=nginx:nginx [".output/public", "/usr/share/nginx/html/"]