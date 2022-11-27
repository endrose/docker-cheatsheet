FROM golang:1.18-alpine

WORKDIR /app

COPY main.go /app

EXPOSE 8080

# knp dia tidak /app/main.go karena dia sudah berada di level yang sama yaitu di dalem /app jadi tidak perlu /app lagi
CMD go run main.go