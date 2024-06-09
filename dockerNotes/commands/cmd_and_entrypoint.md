# CMD & ENTRYPOINT

## CMD/ENTRYPOINT coverage

if multiple `CMD` or `ENTRYPOINT`tags were used in a single dockerfile, only the last one will be executed

```DockerFile
FROM debian:buster
COPY ["python", "app.py"] # ignored
RUN apt-get update ...
CMD ["flask", "run"] # execute
```

## CMD/ENTRYPOINT in combination
