# Docker OpenCV

![Travis (.org)](https://img.shields.io/travis/dkimg/opencv?style=flat-square)
![Docker Pulls](https://img.shields.io/docker/pulls/dkimg/opencv?style=flat-square)

Docker images with OpenCV and Python bindings

- [OpenCV](https://github.com/opencv/opencv) + [contrib](https://github.com/opencv/opencv_contrib)
- Python 3.9
- Numpy
- Tesseract
- Eigen
- OpenBlas
- Intel TBB
- and image dependencies (libjpeg, libpng, libtiff, libwebp, openjpeg)

Available on

- [https://hub.docker.com/r/dkimg/opencv](https://hub.docker.com/r/dkimg/opencv)
- [http://quay.io/dkimg/opencv](http://quay.io/dkimg/opencv)

## Usage:

```
$ docker run -it dkimg/opencv python3
>>> import cv2
```

| opencv | base image | tag | size |
|:---------:|:------:|:-----:|:-----:|
| **4.5.1** | python:3.9-alpine | `dkimg/opencv` | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/dkimg/opencv/4.5.1-alpine?label=%20&logo=docker&logoColor=white&style=flat-square) |
| | python:3.9-alpine | `dkimg/opencv:4.5.1-alpine` | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/dkimg/opencv/4.5.1-alpine?label=%20&logo=docker&logoColor=white&style=flat-square) |
| | fedora:33 | `dkimg/opencv:4.5.1-fedora` | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/dkimg/opencv/4.5.1-fedora?label=%20&logo=docker&logoColor=white&style=flat-square) |
| | ubuntu:20.10 | `dkimg/opencv:4.5.1-ubuntu` | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/dkimg/opencv/4.5.1-ubuntu?label=%20&logo=docker&logoColor=white&style=flat-square) |
| **4.4.0** | python:3.9-alpine | `dkimg/opencv:4.4.0-alpine` | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/dkimg/opencv/4.4.0-alpine?label=%20&logo=docker&logoColor=white&style=flat-square) |
| | fedora:33 | `dkimg/opencv:4.4.0-fedora` | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/dkimg/opencv/4.4.0-fedora?label=%20&logo=docker&logoColor=white&style=flat-square) |
| | ubuntu:20.10 | `dkimg/opencv:4.4.0-ubuntu` | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/dkimg/opencv/4.4.0-ubuntu?label=%20&logo=docker&logoColor=white&style=flat-square) |
| **4.3.0** | python:3.9-alpine | `dkimg/opencv:4.3.0-alpine` | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/dkimg/opencv/4.3.0-alpine?label=%20&logo=docker&logoColor=white&style=flat-square) |
| | fedora:33 | `dkimg/opencv:4.3.0-fedora` | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/dkimg/opencv/4.3.0-fedora?label=%20&logo=docker&logoColor=white&style=flat-square) |
| | ubuntu:20.10 | `dkimg/opencv:4.3.0-ubuntu` | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/dkimg/opencv/4.3.0-ubuntu?label=%20&logo=docker&logoColor=white&style=flat-square) |
| **3.4.13** | python:3.9-alpine | `dkimg/opencv:3.4.13-alpine` | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/dkimg/opencv/3.4.13-alpine?label=%20&logo=docker&logoColor=white&style=flat-square) |
| | fedora:33 | `dkimg/opencv:3.4.13-fedora` | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/dkimg/opencv/3.4.13-fedora?label=%20&logo=docker&logoColor=white&style=flat-square) |
| | ubuntu:20.10 | `dkimg/opencv:3.4.13-ubuntu` | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/dkimg/opencv/3.4.13-ubuntu?label=%20&logo=docker&logoColor=white&style=flat-square) |

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
$ make build
```

## Based on...

- [Install OpenCV-Python in Fedora](https://docs.opencv.org/trunk/dd/dd5/tutorial_py_setup_in_fedora.html)
