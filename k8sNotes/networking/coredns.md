# Coredns pending, node NotReady

In kubeadm, network add-on needs to be applied manually to assign ip (Veth Pair) to pods otherwise nodes wont be ready and CoreDNS pods wont be ready

Events:
  Type     Reason            Age                  From               Message
  ----     ------            ----                 ----               -------
  Warning  FailedScheduling  96s (x73 over 6h2m)  default-scheduler  0/2 nodes are available: 2 node(s) had untolerated taint {node.kubernetes.io/not-ready: }. preemption: 0/2 nodes are available: 2 Preemption is not helpful for scheduling.
  
```bash
# apply calico
kubectl apply -f calico.yaml
# or apply Flannel
kubectl apply -f https://github.com/flannel-io/flannel/releases/latest/download/kube-flannel.yml

kubectl get pods -A --watch
```