A [s6](https://github.com/skarnet/s6) static binary builder Docker image.

### Build docker image

```
./build.sh
```

### Build docker image for ARM

```
./build.arm.sh
```

### Build s6 in docker

Once you have the docker image:

```
docker run -it rancher/s6-builder:v2.2.4.3 /opt/build.sh
```

### Build s6 in docker for ARM

Once you have the docker image for ARM:

```
docker run -it rancher/s6-builder:v2.2.4.3_arm /opt/build.sh
```
