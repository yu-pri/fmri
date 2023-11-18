#! /bin/bash

docker run --rm repronim/neurodocker:latest \
  generate docker \
    --base-image ubuntu:22.04 \
    --pkg-manager apt \
    --dcm2niix version="v1.0.20201102" \
    --fsl version=6.0.6.4 \
    --yes \
    --miniconda version=latest \
                conda_install="python=3.10 traits" \
                pip_install="nipype" > ./Dockerfile.fsl