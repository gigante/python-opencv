FROM python:3-alpine

ENV OPENCV_VERSION=4.1.2

RUN echo "@testing http://nl.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
    apk add --update --no-cache \
        gcc \
        g++ \
        make \
        openblas-dev \
        unzip \
        wget \
        cmake \
        eigen \
        eigen-dev \
        tesseract-ocr \
        tesseract-ocr-dev \
        libtbb@testing \
        libtbb-dev@testing \
        libjpeg-turbo-dev \
        libpng-dev \
        jasper-dev \
        tiff-dev \
        libwebp-dev \
        linux-headers \
        python3-dev && \
    pip install numpy && \
    mkdir -p /opt && cd /opt && \
    wget https://github.com/opencv/opencv/archive/${OPENCV_VERSION}.zip -O opencv.zip && \
    unzip opencv.zip && \
    rm -rf opencv.zip && \
    wget https://github.com/opencv/opencv_contrib/archive/${OPENCV_VERSION}.zip -O opencv_contrib.zip && \
    unzip opencv_contrib.zip && \
    rm -rf opencv_contrib.zip && \
    mkdir -p /opt/opencv-${OPENCV_VERSION}/build && \
    cd /opt/opencv-${OPENCV_VERSION}/build && \
    cmake \
        -D CMAKE_BUILD_TYPE=RELEASE \
        -D CMAKE_INSTALL_PREFIX=/usr/local \
        -D OPENCV_EXTRA_MODULES_PATH=../../opencv_contrib-${OPENCV_VERSION}/modules \
        -D EIGEN_INCLUDE_PATH=/usr/include/eigen3 \
        -D BUILD_opencv_python3=ON \
        -D WITH_TBB=ON \
        -D WITH_EIGEN=ON \
        -D BUILD_TESTS=OFF \
        -D WITH_V4L=OFF \
        -D WITH_IPP=OFF \
        -D WITH_OPENEXR=OFF \
        -D WITH_FFMPEG=OFF \
        -D BUILD_PERF_TESTS=OFF \
        -D BUILD_EXAMPLES=OFF \
        -D BUILD_ANDROID_EXAMPLES=OFF \
        -D INSTALL_PYTHON_EXAMPLES=OFF \
        -D BUILD_DOCS=OFF \
        -D BUILD_opencv_python2=OFF \
        .. && \
    make -j$(nproc) && \
    make install && \
    rm -rf /opt/opencv-${OPENCV_VERSION} && \
    rm -rf /opt/opencv_contrib-${OPENCV_VERSION}
