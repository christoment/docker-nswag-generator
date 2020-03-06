FROM mcr.microsoft.com/dotnet/core/sdk:3.1
WORKDIR /app

# Grab the latest one here https://github.com/RicoSuter/NSwag/releases
ARG NSwagUrl='https://github.com/RicoSuter/NSwag/releases/download/NSwag-Build-1085/NSwag.zip'

RUN curl -O -L $NSwagUrl \
    && apt-get update \
    && apt-get install -y --no-install-recommends unzip \
    && unzip -q ./NSwag.zip -d /nswag \
    && apt-get remove -y --purge unzip \
    && rm -rf /var/lib/apt/lists/* \
    && rm -f NSwag.zip

ENTRYPOINT [ "dotnet", "/nswag/NetCore31/dotnet-nswag.dll" ]
