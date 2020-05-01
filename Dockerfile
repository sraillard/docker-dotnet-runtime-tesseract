# The latest dotnet runtime with Alpine Linux
FROM mcr.microsoft.com/dotnet/core/runtime:3.1.3-alpine3.11

# Maintainer label for public images
LABEL maintainer="Sebastien RAILLARD"

# Install Tesseract OCR
RUN apk --no-cache add tesseract-ocr

# Create a working directory and use it
RUN mkdir /work
WORKDIR /work
