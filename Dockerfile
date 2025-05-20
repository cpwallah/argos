FROM node:alpine

# Install pnpm globally
RUN corepack enable && corepack prepare pnpm@latest --activate

WORKDIR /app

COPY . .

RUN pnpm install
RUN pnpm run build

CMD ["pnpm", "run", "start"]
