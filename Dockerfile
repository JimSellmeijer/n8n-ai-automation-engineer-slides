# Build stage
FROM node:20-bullseye as builder

WORKDIR /app

# Copy package files
COPY package.json package-lock.json ./

# Install dependencies
RUN npm ci

# Copy the entire project
COPY . .

# Build all slide decks (need bash for shell script compatibility)
RUN bash -c "npm run build"

# Production stage
FROM node:20-slim

WORKDIR /app

# Install serve globally
RUN npm install -g serve

# Copy dist folder from builder
COPY --from=builder /app/dist ./dist

# Expose port 3030
EXPOSE 3030

# Serve the dist folder
CMD ["serve", "-s", "dist", "-l", "3030"]
