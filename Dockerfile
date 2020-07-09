FROM tensorflow/tensorflow:latest-py3

RUN apt-get update && \
    apt-get install -y \
            wget \
            bzip2 \
            gcc \
            g++ \
            make \
            zlib1g-dev \
            libncurses5-dev \
            git \
            python \
            python-pip \
            vim \
            openjdk-8-jre

#RUN pip install tensorflow==1.8
RUN pip install tensorflow==1.15

RUN git clone https://github.com/scutbioinformatic/causalcall.git

RUN pip install h5py statsmodels argparse tqdm psutil
