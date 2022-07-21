FROM fedora:36

ARG OPENCV_VERSION

WORKDIR /opt/build

RUN set -ex \
    && dnf -q install -y \
        gcc gcc-c++ \
        make cmake \
        wget unzip \
        hdf5 \
        libjpeg-turbo libjpeg-turbo-devel \
        libpng libpng-devel \
        libtiff libtiff-devel \
        libwebp libwebp-devel \
        openjpeg2 openjpeg2-devel \
        tbb tbb-devel \
        eigen3 \
        openblas openblas-devel \
        protobuf protobuf-devel \
        tesseract tesseract-langpack-por tesseract-devel \
        python3-numpy python3-devel \
        kernel-headers \
    && wget -q https://github.com/opencv/opencv/archive/${OPENCV_VERSION}.zip -O opencv.zip \
    && wget -q https://github.com/opencv/opencv_contrib/archive/${OPENCV_VERSION}.zip -O opencv_contrib.zip \
    && unzip -qq opencv.zip -d /opt && rm -rf opencv.zip \
    && unzip -qq opencv_contrib.zip -d /opt && rm -rf opencv_contrib.zip \
    && cmake \
        -D CMAKE_BUILD_TYPE=RELEASE \
        -D CMAKE_INSTALL_PREFIX=/usr \
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
    && make install \
    && rm -rf /opt/build/* \
    && rm -rf /opt/opencv-${OPENCV_VERSION} \
    && rm -rf /opt/opencv_contrib-${OPENCV_VERSION} \
    && dnf -q remove -y \
        gcc gcc-c++ \
        make cmake \
        libjpeg-turbo-devel \
        libpng-devel \
        libtiff-devel \
        libwebp-devel \
        openjpeg2-devel \
        tbb-devel \
        protobuf-devel \
        tesseract-devel \
        python3-devel \
        kernel-headers \
    && dnf -q clean all
