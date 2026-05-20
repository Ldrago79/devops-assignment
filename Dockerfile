# Stage 1: Build environment
FROM node:20-alpine AS builder
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .

# Stage 2: Production environment
FROM node:20-alpine
WORKDIR /app
COPY --from=builder /app .
# Add a non-root user for security (Task 6 requirement)
RUN addgroup -S appgroup && adduser -S appuser -G appgroup
USER appuser

EXPOSE 3000
CMD ["npm", "start"]