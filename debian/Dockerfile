FROM debian:11-slim

ARG OPENCV_VERSION
ARG DEBIAN_FRONTEND=noninteractive

WORKDIR /opt/build

RUN set -ex \
    && apt-get -qq update \
    && apt-get -qq install -y --no-install-recommends \
        build-essential cmake \
        wget unzip \
        libhdf5-103-1 libhdf5-dev \
        libopenblas0 libopenblas-dev \
        libprotobuf23 libprotobuf-dev \
        libjpeg62-turbo libjpeg62-turbo-dev \
        libpng16-16 libpng-dev \
        libtiff5 libtiff-dev \
        libwebp6 libwebp-dev \
        libopenjp2-7 libopenjp2-7-dev \
        libtbb2 libtbb-dev \
        libeigen3-dev \
        tesseract-ocr tesseract-ocr-por libtesseract-dev \
        python3 python3-pip python3-numpy python3-dev \
    && wget -q --no-check-certificate https://github.com/opencv/opencv/archive/${OPENCV_VERSION}.zip -O opencv.zip \
    && wget -q --no-check-certificate https://github.com/opencv/opencv_contrib/archive/${OPENCV_VERSION}.zip -O opencv_contrib.zip \
    && unzip -qq opencv.zip -d /opt && rm -rf opencv.zip \
    && unzip -qq opencv_contrib.zip -d /opt && rm -rf opencv_contrib.zip \
    && cmake \
        -D CMAKE_BUILD_TYPE=RELEASE \
        -D CMAKE_INSTALL_PREFIX=/usr/local \
        -D OPENCV_EXTRA_MODULES_PATH=/opt/opencv_contrib-${OPENCV_VERSION}/modules \
        -D EIGEN_INCLUDE_PATH=/usr/include/eigen3 \
        -D OPENCV_ENABLE_NONFREE=ON \
        -D WITH_JPEG=ON \
        -D WITH_PNG=ON \
        -D WITH_TIFF=ON \
        -D WITH_WEBP=ON \
        -D WITH_JASPER=ON \
        -D WITH_EIGEN=ON \
        -D WITH_TBB=ON \
        -D WITH_LAPACK=ON \
        -D WITH_PROTOBUF=ON \
        -D WITH_V4L=OFF \
        -D WITH_GSTREAMER=OFF \
        -D WITH_GTK=OFF \
        -D WITH_QT=OFF \
        -D WITH_CUDA=OFF \
        -D WITH_VTK=OFF \
        -D WITH_OPENEXR=OFF \
        -D WITH_FFMPEG=OFF \
        -D WITH_OPENCL=OFF \
        -D WITH_OPENNI=OFF \
        -D WITH_XINE=OFF \
        -D WITH_GDAL=OFF \
        -D WITH_IPP=OFF \
        -D BUILD_OPENCV_PYTHON3=ON \
        -D BUILD_OPENCV_PYTHON2=OFF \
        -D BUILD_OPENCV_JAVA=OFF \
        -D BUILD_TESTS=OFF \
        -D BUILD_IPP_IW=OFF \
        -D BUILD_PERF_TESTS=OFF \
        -D BUILD_EXAMPLES=OFF \
        -D BUILD_ANDROID_EXAMPLES=OFF \
        -D BUILD_DOCS=OFF \
        -D BUILD_ITT=OFF \
        -D INSTALL_PYTHON_EXAMPLES=OFF \
        -D INSTALL_C_EXAMPLES=OFF \
        -D INSTALL_TESTS=OFF \
        /opt/opencv-${OPENCV_VERSION} \
    && make -j$(nproc) \
    && ln -s /usr/local/lib/python3.9/site-packages/cv2 /usr/local/lib/python3.9/dist-packages/cv2 \
    && make install \
    && rm -rf /opt/build/* \
    && rm -rf /opt/opencv-${OPENCV_VERSION} \
    && rm -rf /opt/opencv_contrib-${OPENCV_VERSION} \
    && apt-get -qq remove -y \
        software-properties-common \
        build-essential cmake \
        libhdf5-dev \
        libprotobuf-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
        libtiff-dev \
        libwebp-dev \
        libopenjp2-7-dev \
        libtbb-dev \
        libtesseract-dev \
        python3-dev \
    && apt-get -qq autoremove \
    && apt-get -qq clean
