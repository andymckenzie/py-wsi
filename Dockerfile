FROM nvidia/cuda:10.2-runtime AS jupyter-base

RUN apt update && apt install -y --no-install-recommends \
    git \
    build-essential \
    python3-dev \
    python3-pip \
    python3-setuptools \
    openslide-tools
RUN pip3 -q install pip --upgrade
RUN pip3 install \
    jupyter numpy pandas matplotlib lmdb \
    scikit-learn scikit-image scipy \
    libopencv opencv-python pyvips tqdm Shapely h5py openslide-python
RUN pip3 --no-cache-dir install torch
RUN pip3 install torchvision tensorboardX
