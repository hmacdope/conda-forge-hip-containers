FROM condaforge/linux-anvil-cuda:11.2
LABEL maintainer=hugo.macdermott@choderlab.org
LABEL version=0.1
LABEL name=conda-forge-linux-anvil-cuda-rocm

ARG ROCM_VERSION=5.7


# Install ROCm
RUN sudo yum install -y https://repo.radeon.com/amdgpu-install/5.7/rhel/7.9/amdgpu-install-5.7.50700-1.el7.noarch.rpm
RUN sudo yum install -y gcc-c++

RUN sudo amdgpu-install -y


