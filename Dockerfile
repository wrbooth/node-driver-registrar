FROM gcr.io/distroless/static:latest
LABEL maintainers="Kubernetes Authors"
LABEL description="CSI Node driver registrar"

ARG ARCH

COPY ./bin/csi-node-driver-registrar-${ARCH} csi-node-driver-registrar
ENTRYPOINT ["/csi-node-driver-registrar"]
