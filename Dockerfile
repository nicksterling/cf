FROM golang:buster as cli-build
RUN go get code.cloudfoundry.org/cli

FROM ubuntu:18.04
COPY --from=cli-build /go/bin/cli /usr/local/bin/cf
