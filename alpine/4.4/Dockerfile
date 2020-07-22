FROM python:3.8-alpine

ENV OPENCV_VERSION=4.4.0

RUN echo "@edgunity http://nl.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories && \
    echo "@edge http://nl.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories && \
    echo "@testing http://nl.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
    echo "@community http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories && \
    echo "@v3.10 http://dl-cdn.alpinelinux.org/alpine/v3.10/main" >> /etc/apk/repositories && \
    apk add --update --no-cache \
        build-base \
        cmake \
        unzip \
        wget \
        openblas openblas-dev@community \
        libjpeg libjpeg-turbo-dev \
        libpng libpng-dev \
        tiff tiff-dev \
        libwebp libwebp-dev \
        jasper@v3.10 jasper-dev@v3.10 \
        libtbb@testing libtbb-dev@testing \
        eigen eigen-dev \
        tesseract-ocr tesseract-ocr-data-por tesseract-ocr-dev \
        python3-dev \
        linux-headers && \
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
        -D PYTHON3_NUMPY_INCLUDE_DIRS=/usr/local/lib/python3.8/site-packages/numpy/core/include/ \
        .. && \
    make -j$(nproc) && \
    make install && \
    # clean
    rm -rf /opt/opencv-${OPENCV_VERSION} && \
    rm -rf /opt/opencv_contrib-${OPENCV_VERSION} && \
    apk del --no-cache \
        build-base \
        cmake \
        openblas-dev \
        libjpeg-turbo-dev \
        libpng-dev \
        tiff-dev \
        libwebp-dev \
        jasper-dev \
        libtbb-dev \
        eigen-dev \
        tesseract-ocr-dev \
        py3-numpy-dev \
        python3-dev \
        linux-headers
