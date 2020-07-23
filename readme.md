# Docker OpenCV

[![Build Status](https://travis-ci.org/dkimg/opencv.svg?branch=master)](https://travis-ci.org/dkimg/opencv) ![Docker Pulls](https://img.shields.io/docker/pulls/dkimg/opencv.svg)

Docker images with OpenCV and Python 3

- [OpenCV](https://github.com/opencv/opencv) + [Contrib](https://github.com/opencv/opencv_contrib)
- Python 3.8
- Tesseract
- and image dependencies

| opencv | dist | image/tag | size |
|:---------:|:------:|:-----:|:-----:|
| `4.4.0` | Fedora 32 | dkimg/opencv:4.4-fedora | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/dkimg/opencv/4.4-fedora?label=image) |
| `4.4.0` | Alpine 3.12 | dkimg/opencv:4.4-alpine | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/dkimg/opencv/4.4-alpine?label=image) |
| `3.4.1` | Fedora 32 | dkimg/opencv:3.4-fedora | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/dkimg/opencv/3.4-fedora?label=image) |
| `3.4.1` | Alpine 3.12 | dkimg/opencv:3.4-alpine | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/dkimg/opencv/3.4-alpine?label=image) |

Usage:

```
$ docker run -it dkimg/opencv python3
>>> import cv2
```

Based on...

- [Install OpenCV-Python in Fedora](https://docs.opencv.org/trunk/dd/dd5/tutorial_py_setup_in_fedora.html)
