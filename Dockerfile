FROM golang:1.23-alpine
WORKDIR /app
COPY . .
RUN apk add --no-cache git
RUN go build -o manager
EXPOSE 8080
CMD ["./manager"]