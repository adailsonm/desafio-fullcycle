FROM golang:1.19-alpine AS builder

WORKDIR /app/desafio

COPY . .

RUN go build -o ./out/desafio .

FROM scratch

COPY --from=builder /app/desafio/out/desafio /app/desafio

CMD [ "app/desafio" ]
