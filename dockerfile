FROM golang:1.24 AS build

WORKDIR /app
COPY . .

WORKDIR /app/cmd/ordersystem
RUN CGO_ENABLED=0 GOOS=linux go build -o ordersystem .

FROM alpine:latest
WORKDIR /app
COPY --from=build /app/cmd/ordersystem/ordersystem .
COPY --from=build /app/cmd/ordersystem/.env .
COPY wait-for-it.sh .
RUN chmod +x /app/wait-for-it.sh

EXPOSE 8000
EXPOSE 50051
EXPOSE 8080
CMD ["/app/ordersystem"]
