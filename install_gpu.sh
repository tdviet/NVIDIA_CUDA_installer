#!/bin/bash

# Viet Tran, IISAS,  2015
# Scripting for installing all necessary packages needed for GPU apps on vanilla Ubuntu image
# Make sure to choose cloud image with UEFI support 
# https://cloud-images.ubuntu.com/trusty/current/trusty-server-cloudimg-amd64-uefi1.img


# Installing gcc, make and kernel-extra 
sudo apt-get update
sudo apt-get -y install gcc make linux-image-extra-virtual

# Instaling NVIDA driver
wget http://us.download.nvidia.com/XFree86/Linux-x86_64/346.96/NVIDIA-Linux-x86_64-346.96.run
chmod a+x NVIDIA-Linux-x86_64-346.96.run
sudo ./NVIDIA-Linux-x86_64-346.96.run -a

# Installing CUDA. You can choose only runtime lib (cuda-runtime-version)
# or all packages  "sudo apt-get install cuda"
wget http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1404/x86_64/cuda-repo-ubuntu1404_7.5-18_amd64.deb
sudo dpkg -i cuda-repo-ubuntu1404_7.5-18_amd64.deb
sudo apt-get update
sudo apt-get install cuda-runtime-7-5 

