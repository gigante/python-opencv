FROM fedora:27

ENV OPENCV_VERSION=3.4.1

RUN dnf install -y \
    gcc \
    gcc-c++ \
    cmake \
    wget \
    unzip \
    make \
    # accelerated baseline JPEG compression and decompression library
    libjpeg-turbo-devel \
    # Portable Network Graphics library
    libpng-devel \
    # Provides support for the Tag Image File Format or TIFF (development files)
    libtiff-devel \
    # Libraries for working with WebP images
    libwebp-devel \
    # A software-based implementation of the codec specified in the emerging JPEG-2000 Part-1 standard (development files)
    jasper-devel \
    # Intel TBB, a widely used C++ template library for task parallelism
    tbb-devel \
    # A lightweight C++ template library for vector and matrix math
    eigen3-devel \
    # tesseract
    tesseract tesseract-devel \
    # python packages
    python3-devel python3-numpy \
    # kernel
    kernel-headers && \
    # clean cache
    dnf clean all && \
    # download and build opencv
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
