# Docker OpenCV

![build](https://github.com/dkimg/opencv/actions/workflows/build/badge.svg)
![GitHub Pulls](https://img.shields.io/github/downloads/dkimg/opencv/total)
![Docker Pulls](https://img.shields.io/docker/pulls/dkimg/opencv?style=flat-square)

Docker images with OpenCV and Python bindings

- [OpenCV](https://github.com/opencv/opencv) + [contrib](https://github.com/opencv/opencv_contrib)
- Python 3.9
- Numpy
- Tesseract
- Eigen
- OpenBlas
- Intel TBB
- libjpeg, libpng, libtiff, libwebp and openjpeg

Available on

- [DockerHub](https://hub.docker.com/r/dkimg/opencv)
- [Quay.io](https://quay.io/dkimg/opencv)
- [Github](https://github.com/dkimg/opencv/pkgs/container/opencv)

## Usage:

```
$ docker run -it dkimg/opencv python3
>>> import cv2
```

| opencv | base image | tag | size |
|:---------:|:------:|:-----:|:-----:|
| **4.5.5** | fedora:35 | `dkimg/opencv` | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/dkimg/opencv/4.5.5-fedora?label=%20&logo=docker&logoColor=white&style=flat-square) |
| | ubuntu:21.10 | `dkimg/opencv:4.5.5-ubuntu` | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/dkimg/opencv/4.5.5-ubuntu?label=%20&logo=docker&logoColor=white&style=flat-square) |
| | debian:11-slim | `dkimg/opencv:4.5.5-debian` | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/dkimg/opencv/4.5.5-debian?label=%20&logo=docker&logoColor=white&style=flat-square) |
| **4.4.0** | fedora:35 | `dkimg/opencv:4.4.0-fedora` | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/dkimg/opencv/4.4.0-fedora?label=%20&logo=docker&logoColor=white&style=flat-square) |
| | ubuntu:21.10 | `dkimg/opencv:4.4.0-ubuntu` | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/dkimg/opencv/4.4.0-ubuntu?label=%20&logo=docker&logoColor=white&style=flat-square) |
| | debian:11-slim | `dkimg/opencv:4.4.0-debian` | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/dkimg/opencv/4.4.0-debian?label=%20&logo=docker&logoColor=white&style=flat-square) |
| **4.3.0** | fedora:35 | `dkimg/opencv:4.3.0-fedora` | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/dkimg/opencv/4.3.0-fedora?label=%20&logo=docker&logoColor=white&style=flat-square) |
| | ubuntu:21.10 | `dkimg/opencv:4.3.0-ubuntu` | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/dkimg/opencv/4.3.0-ubuntu?label=%20&logo=docker&logoColor=white&style=flat-square) |
| | debian:11-slim | `dkimg/opencv:4.3.0-debian` | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/dkimg/opencv/4.3.0-debian?label=%20&logo=docker&logoColor=white&style=flat-square) |
| **3.4.16** | fedora:35 | `dkimg/opencv:3.4.16-fedora` | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/dkimg/opencv/3.4.16-fedora?label=%20&logo=docker&logoColor=white&style=flat-square) |
| | ubuntu:21.10 | `dkimg/opencv:3.4.16-ubuntu` | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/dkimg/opencv/3.4.16-ubuntu?label=%20&logo=docker&logoColor=white&style=flat-square) |
| | debian:11-slim | `dkimg/opencv:3.4.16-debian` | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/dkimg/opencv/3.4.16-debian?label=%20&logo=docker&logoColor=white&style=flat-square) |

## Build

Config build options

```
    -D OPENCV_ENABLE_NONFREE=ON
    -D WITH_JPEG=ON
    -D WITH_PNG=ON
    -D WITH_TIFF=ON
    -D WITH_WEBP=ON
    -D WITH_JASPER=ON
    -D WITH_EIGEN=ON
    -D WITH_TBB=ON
    -D WITH_LAPACK=ON
    -D WITH_PROTOBUF=ON
    -D WITH_V4L=OFF
    -D WITH_GSTREAMER=OFF
    -D WITH_GTK=OFF
    -D WITH_QT=OFF
    -D WITH_CUDA=OFF
    -D WITH_VTK=OFF
    -D WITH_OPENEXR=OFF
    -D WITH_FFMPEG=OFF
    -D WITH_OPENCL=OFF
    -D WITH_OPENNI=OFF
    -D WITH_XINE=OFF
    -D WITH_GDAL=OFF
    -D WITH_IPP=OFF
    -D BUILD_OPENCV_PYTHON3=ON
    -D BUILD_OPENCV_PYTHON2=OFF
    -D BUILD_OPENCV_JAVA=OFF
    -D BUILD_TESTS=OFF
    -D BUILD_IPP_IW=OFF
    -D BUILD_PERF_TESTS=OFF
    -D BUILD_EXAMPLES=OFF
    -D BUILD_ANDROID_EXAMPLES=OFF
    -D BUILD_DOCS=OFF
    -D BUILD_ITT=OFF
    -D INSTALL_PYTHON_EXAMPLES=OFF
    -D INSTALL_C_EXAMPLES=OFF
    -D INSTALL_TESTS=OFF
```

To build locally

```
$ make build CV=4.5.4 DIST=fedora
```

## Based on...

- [Install OpenCV-Python in Fedora](https://docs.opencv.org/trunk/dd/dd5/tutorial_py_setup_in_fedora.html)
