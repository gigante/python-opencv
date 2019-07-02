FROM fedora:27

RUN dnf install -y \
    gcc \
    gcc-c++ \
    cmake \
    wget \
    unzip \
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
    # Intel® TBB, a widely used C++ template library for task parallelism
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
    dnf clean all