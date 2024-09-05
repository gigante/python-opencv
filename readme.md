# Python OpenCV

![build](https://github.com/gigante/python-opencv/actions/workflows/build.yml/badge.svg)
![Docker Pulls](https://img.shields.io/docker/pulls/hdgigante/python-opencv?style=flat-square)

Docker images with OpenCV and Python bindings

- [OpenCV](https://github.com/opencv/opencv) + [contrib](https://github.com/opencv/opencv_contrib)
- pip
- Numpy
- Tesseract
- Eigen
- OpenBlas
- Intel TBB
- libjpeg, libpng, libtiff, libwebp and openjpeg

Available on [DockerHub](https://hub.docker.com/r/hdgigante/python-opencv)

## Usage:

```
$ docker run -it hdgigante/python-opencv python3
>>> import cv2
```

| opencv | base image | tag | python | size |
|:---------:|:------:|:-----:|:-----:|:-----:|
| **4.10.0** | [fedora:40](https://hub.docker.com/_/fedora) | `hdgigante/python-opencv` | 3.12 | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/hdgigante/python-opencv/4.10.0-fedora?label=%20&logo=docker&logoColor=white&style=flat-square) |
| | [python:3.12-alpine](https://hub.docker.com/_/python) | `hdgigante/python-opencv:4.10.0-alpine` | 3.12 | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/hdgigante/python-opencv/4.10.0-alpine?label=%20&logo=docker&logoColor=white&style=flat-square) |
| | [ubuntu:24.04](https://hub.docker.com/_/ubuntu) | `hdgigante/python-opencv:4.10.0-ubuntu` | 3.12 | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/hdgigante/python-opencv/4.10.0-ubuntu?label=%20&logo=docker&logoColor=white&style=flat-square) |
| | [debian:12.7-slim](https://hub.docker.com/_/debian) | `hdgigante/python-opencv:4.10.0-debian` | 3.11 | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/hdgigante/python-opencv/4.10.0-debian?label=%20&logo=docker&logoColor=white&style=flat-square) |
| **4.9.0** | [fedora:40](https://hub.docker.com/_/fedora) | `hdgigante/python-opencv:4.9.0-fedora` | 3.12 | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/hdgigante/python-opencv/4.9.0-fedora?label=%20&logo=docker&logoColor=white&style=flat-square) |
| | [python:3.12-alpine](https://hub.docker.com/_/python) | `hdgigante/python-opencv:4.9.0-alpine` | 3.12 | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/hdgigante/python-opencv/4.9.0-alpine?label=%20&logo=docker&logoColor=white&style=flat-square) |
| | [ubuntu:24.04](https://hub.docker.com/_/ubuntu) | `hdgigante/python-opencv:4.9.0-ubuntu` | 3.12 | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/hdgigante/python-opencv/4.9.0-ubuntu?label=%20&logo=docker&logoColor=white&style=flat-square) |
| | [debian:12.7-slim](https://hub.docker.com/_/debian) | `hdgigante/python-opencv:4.9.0-debian` | 3.11 | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/hdgigante/python-opencv/4.9.0-debian?label=%20&logo=docker&logoColor=white&style=flat-square) |

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
$ make build CV=4.10.0 DIST=fedora
```

## Based on...

- [Install OpenCV-Python in Fedora](https://docs.opencv.org/4.10.0/dd/dd5/tutorial_py_setup_in_fedora.html)
