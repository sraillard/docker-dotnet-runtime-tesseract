# The latest dotnet runtime with Alpine Linux
FROM mcr.microsoft.com/dotnet/core/runtime:3.1.3-alpine3.11

# Maintainer label for public images
LABEL maintainer="Sebastien RAILLARD"

# Add support for cultures in Alpine Linux
# https://andrewlock.net/dotnet-core-docker-and-cultures-solving-culture-issues-porting-a-net-core-app-from-windows-to-linux/
RUN apk add --no-cache icu-libs
ENV DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=false

# GDI+ library is needed for System.Drawing functions
RUN apk add --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing/ libgdiplus

# Install Tesseract OCR
RUN apk --no-cache add tesseract-ocr

# Create a working directory and use it
RUN mkdir /work
WORKDIR /work
