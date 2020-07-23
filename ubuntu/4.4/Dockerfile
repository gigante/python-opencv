FROM ubuntu:20.04

ENV OPENCV_VERSION=4.4.0
ENV DEBIAN_FRONTEND=noninteractive

RUN set -ex \
    && apt-get -qq update \
    && apt-get -qq install -y --no-install-recommends software-properties-common \
    && add-apt-repository "deb http://security.ubuntu.com/ubuntu xenial-security main" \
    && apt-get -qq install -y --no-install-recommends \
        build-essential \
        cmake \
        wget \
        unzip \
        libjpeg8 libjpeg8-dev \
        libpng16-16 libpng-dev \
        libtiff5 libtiff-dev \
        libwebp6 libwebp-dev \
        libjasper1 libjasper-dev \
        libtbb2 libtbb-dev \
        libeigen3-dev \
        tesseract-ocr tesseract-ocr-por libtesseract-dev \
        python3-numpy python3-dev \
    && mkdir -p /opt && cd /opt \
    && wget -q https://github.com/opencv/opencv/archive/${OPENCV_VERSION}.zip -O opencv.zip \
    && unzip -qq opencv.zip \
    && rm -rf opencv.zip \
    && wget -q https://github.com/opencv/opencv_contrib/archive/${OPENCV_VERSION}.zip -O opencv_contrib.zip \
    && unzip -qq opencv_contrib.zip \
    && rm -rf opencv_contrib.zip \
    && mkdir -p /opt/opencv-${OPENCV_VERSION}/build \
    && cd /opt/opencv-${OPENCV_VERSION}/build \
    && cmake \
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
        .. \
    && make -j$(nproc) \
    && make install \
    && cd \
    && rm -rf /opt/opencv-${OPENCV_VERSION} \
    && rm -rf /opt/opencv_contrib-${OPENCV_VERSION} \
    && apt-get -qq remove -y \
        software-properties-common \
        build-essential \
        cmake \
        libjpeg8-dev \
        libpng-dev \
        libtiff-dev \
        libwebp-dev \
        libjasper-dev \
        libtbb-dev \
        libtesseract-dev \
        python3-dev \
    && apt-get -qq autoremove \
    && apt-get -qq clean
