Description
===========

Image based on Alpine Linux with the following tools:
* dotnet runtime
* Tesseract OCR

Using the prebuilt image
========================

The public Docker Hub repository is here:
https://hub.docker.com/r/sraillard/dotnet-runtime-tesseract

To run it in interactive mode:
```
docker run --rm -it sraillard/dotnet-runtime-tesseract:3.1.3-alpine3.11
```

Building
========

```
docker build --tag sraillard/dotnet-runtime-tesseract:3.1.3-alpine3.11 .
```
