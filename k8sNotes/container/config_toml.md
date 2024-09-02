# containerd config.toml

containerd metadata: /var/lib/containerd
containerd state dir: /run/containerd
plugin_dir: dynamic plugin dir

[plugins]:

- [grpc] : Section for gRPC socket listener settings, default socket for containerd at /run/containerd/containerd.sock
- [plugins."io.containerd.gc.v1.scheduler"] plugin that provides garbage collection options that perform advanced tuning for the scheduler
- [plugins."io.containerd.grpc.v1.cri"]
    [plugins."io.containerd.grpc.v1.cri".containerd]
      [plugins."io.containerd.grpc.v1.cri".containerd.runtimes]
        [plugins."io.containerd.grpc.v1.cri".containerd.runtimes.runc]
          [plugins."io.containerd.grpc.v1.cri".containerd.runtimes.runc.options]
        [plugins."io.containerd.grpc.v1.cri".containerd.runtimes.runc01]
          [plugins."io.containerd.grpc.v1.cri".containerd.runtimes.runc01.options]
        [plugins."io.containerd.grpc.v1.cri".containerd.runtimes.runc02]
          [plugins."io.containerd.grpc.v1.cri".containerd.runtimes.runc02.options]
  creates three named runtime configurations, named "runc", "runc01" and "runc02"
