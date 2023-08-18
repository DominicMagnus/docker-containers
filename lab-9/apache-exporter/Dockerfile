FROM golang:1.17 AS builder
WORKDIR /go/src/github.com/Lusitaniae/apache_exporter
RUN git clone https://github.com/Lusitaniae/apache_exporter.git .
RUN go install -v .

FROM debian:buster-slim
COPY --from=builder /go/bin/apache_exporter /bin/apache_exporter

EXPOSE 9117
CMD ["/bin/apache_exporter"]
