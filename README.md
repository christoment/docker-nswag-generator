# docker-nswag-generator
Dockerised NSwag CLI runtime in a .NET core docker image

## Prerequisite
1. Docker with Linux container installed.
2. `bash` / `sh` environment (or any CLI but the script is only provided for `bash`).

## Usage
1. Prepare a working directory (the default folder name is `workdir`).
2. Copy the NSwag [template](./angular.template.nswag) to your working directory, and set your setting. (Using [NSwagStudio](https://github.com/RicoSuter/NSwag/wiki/NSwagStudio) is recommended).
3. Run the provided script `run-swagger.sh` to execute the NSwag inside the container image.


## Credit
1. https://github.com/Countingup/docker-nswag as the base for the Dockefile script