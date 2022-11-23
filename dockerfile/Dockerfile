#FROM ubuntu:20.04
#FROM nvidia/cuda:11.4.1-cudnn8-devel-ubuntu20.04
FROM nvidia/cuda:10.1-cudnn8-devel-ubuntu18.04

# Stolen from https://github.com/patryklaskowski/Convert_Darknet_YOLO_to_TensorFlow
RUN apt-get update && apt-get install -y git nano python3 python3-pip libgl1

# ffmpeg libsm6 libxext6

RUN update-alternatives --install /usr/bin/python python /usr/bin/python3.6 1 && \
    update-alternatives --config python && \
    update-alternatives --set python /usr/bin/python3.6

# Latest at the time of writing 149ff02286a95dc0fdb3f71cc942243fe731cf3e
RUN cd /root && \
    git clone https://github.com/patryklaskowski/Convert_Darknet_YOLO_to_TensorFlow.git && \
    cd Convert_Darknet_YOLO_to_TensorFlow && \
    git checkout 149ff02286a95dc0fdb3f71cc942243fe731cf3e && \
    python -m pip install -U pip && \
    python -m pip install -r requirements.txt

COPY convert.sh /root/Convert_Darknet_YOLO_to_TensorFlow

