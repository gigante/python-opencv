# Docker OpenCV

[![Build Status](https://travis-ci.org/dkimg/opencv.svg?branch=master)](https://travis-ci.org/dkimg/opencv) ![Docker Pulls](https://img.shields.io/docker/pulls/dkimg/opencv.svg)

Docker images with OpenCV and Python bindings

- [OpenCV](https://github.com/opencv/opencv) + [Contrib](https://github.com/opencv/opencv_contrib)
- Python 3.8
- Tesseract
- Eigen
- OpenBlas
- and image dependencies

## Alpine

| opencv | dist | image/tag | size |
|:---------:|:------:|:-----:|:-----:|
| `4.4.0` | Alpine 3.12 | dkimg/opencv | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/dkimg/opencv/4.4.0-alpine?label=image) |
| `4.4.0` | Alpine 3.12 | dkimg/opencv:4.4.0-alpine | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/dkimg/opencv/4.4.0-alpine?label=image) |
| `4.3.0` | Alpine 3.12 | dkimg/opencv:4.3.0-alpine | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/dkimg/opencv/4.3.0-alpine?label=image) |
| `3.4.11` | Alpine 3.12 | dkimg/opencv:3.4.11-alpine | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/dkimg/opencv/3.4.11-alpine?label=image) |
| `3.4.10` | Alpine 3.12 | dkimg/opencv:3.4.10-alpine | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/dkimg/opencv/3.4.10-alpine?label=image) |

## Fedora

| opencv | dist | image/tag | size |
|:---------:|:------:|:-----:|:-----:|
| `4.4.0` | Fedora 32 | dkimg/opencv:4.4.0-fedora | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/dkimg/opencv/4.4.0-fedora?label=image) |
| `4.3.0` | Fedora 32 | dkimg/opencv:4.3.0-fedora | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/dkimg/opencv/4.3.0-fedora?label=image) |
| `3.4.11` | Fedora 32 | dkimg/opencv:3.4.11-fedora | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/dkimg/opencv/3.4.11-fedora?label=image) |
| `3.4.10` | Fedora 32 | dkimg/opencv:3.4.10-fedora | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/dkimg/opencv/3.4.10-fedora?label=image) |

## Ubuntu

| opencv | dist | image/tag | size |
|:---------:|:------:|:-----:|:-----:|
| `4.4.0` | Ubuntu 20.04 | dkimg/opencv:4.4.0-ubuntu | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/dkimg/opencv/4.4.0-ubuntu?label=image) |
| `4.3.0` | Ubuntu 20.04 | dkimg/opencv:4.3.0-ubuntu | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/dkimg/opencv/4.3.0-ubuntu?label=image) |
| `3.4.11` | Ubuntu 20.04 | dkimg/opencv:3.4.11-ubuntu | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/dkimg/opencv/3.4.11-ubuntu?label=image) |
| `3.4.10` | Ubuntu 20.04 | dkimg/opencv:3.4.10-ubuntu | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/dkimg/opencv/3.4.10-ubuntu?label=image) |

## Usage:

```
$ docker run -it dkimg/opencv python3
>>> import cv2
```

Based on...

- [Install OpenCV-Python in Fedora](https://docs.opencv.org/trunk/dd/dd5/tutorial_py_setup_in_fedora.html)
