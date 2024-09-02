# choose between runc(s) with containerd in k8s

runc is the default low-level container runtime that is used by containerd to run containers. It's responsible for setting up the namespaces, cgroups, and other low-level details of the container.

## containerd configuration

We can specify one or more `runc` runtime configurations in config.toml file for containerd:

```toml
[plugins]
  [plugins.cri]
    [plugins.cri.containerd]
      [plugins.cri.containerd.runtimes]
        [plugins.cri.containerd.runtimes.runc1]
          runtime_type = "io.containerd.runc.v2"
          [plugins.cri.containerd.runtimes.runc1.options]
            BinaryName = "/usr/local/bin/runc1"
        
        [plugins.cri.containerd.runtimes.runc2]
          runtime_type = "io.containerd.runc.v2"
          [plugins.cri.containerd.runtimes.runc2.options]
            BinaryName = "/usr/local/bin/runc2"
```

## k8s resource configuration

Create a runtime class resource in kubernetes

```yaml
apiVersion: node.k8s.io/v1
kind: RuntimeClass
metadata:
  name: runc1
handler: runc1
```

## pod configuration

specify `runtimeClassName` in pod

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: example-pod
spec:
  runtimeClassName: runc1
  containers:
  - name: example-container
    image: nginx
```