# Service Mesh Dev Sandbox

There are multiple scripts in the `/scripts` path which will assist in the setup of the service mesh.

## Vagrant Setup (Recommended)

To setup using vagrant, follow the instructions listed in the [Vagrant README](https://github.com/gmatthew/service-mesh-dev/blob/main/vagrant/README.md)

## Manual Setup
1. `./scripts/install-docker.sh` to [install Docker](https://docs.docker.com/engine/install/ubuntu/)
2. `./scripts/install-minikube.sh` to [install Minikube](https://minikube.sigs.k8s.io/docs/start/) and start with 1 node
3. `./scripts/install-istio.sh` to [install Istio](https://istio.io/latest/docs/setup/getting-started/)

## Tools
1. `./scripts/install-wrk2.sh` to install [wrk2](https://github.com/giltene/wrk2) for load generation
2. Local development environment setup with Vagrant is located in `/vagrant`

## Questions
### [How to determine the Ingress IP and ports for Istio?](https://istio.io/latest/docs/setup/getting-started/#determining-the-ingress-ip-and-ports)
First start the minikube tunnel
```bash
minikube tunnel
```
then in a separate terminal
```bash
export INGRESS_HOST=$(kubectl -n istio-system get service istio-ingressgateway -o jsonpath='{.status.loadBalancer.ingress[0].ip}')
export INGRESS_PORT=$(kubectl -n istio-system get service istio-ingressgateway -o jsonpath='{.spec.ports[?(@.name=="http2")].port}')
export SECURE_INGRESS_PORT=$(kubectl -n istio-system get service istio-ingressgateway -o jsonpath='{.spec.ports[?(@.name=="https")].port}')
export GATEWAY_URL=$INGRESS_HOST:$INGRESS_PORT

echo "$GATEWAY_URL"
```

## References
1. [Istio Bookinfo Application](https://istio.io/latest/docs/examples/bookinfo/)
