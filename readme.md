# Docker OpenCV

Docker images with OpenCV and Python 3 based on Fedora

![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/hdgigante/opencv.svg) ![Docker Pulls](https://img.shields.io/docker/pulls/hdgigante/opencv.svg)

## Components

- [OpenCV](https://github.com/opencv/opencv) and [contrib](https://github.com/opencv/opencv_contrib)
- Python 3
- Tesseract
- and opencv image dependencies

## Images

| distro | opencv | image | size
| :--- | :--- | :--- | :--- |
| fedora 30 | 3.4.6 | hdgigante/opencv:v3.4.6 | ![MicroBadger Size (tag)](https://img.shields.io/microbadger/image-size/hdgigante/opencv/v3.4.6.svg)
| fedora 30 | 3.4.7 | hdgigante/opencv:v3.4.7 | ![MicroBadger Size (tag)](https://img.shields.io/microbadger/image-size/hdgigante/opencv/v3.4.7.svg)
| fedora 30 | 3.4.8 | hdgigante/opencv:v3.4.8 | ![MicroBadger Size (tag)](https://img.shields.io/microbadger/image-size/hdgigante/opencv/v3.4.8.svg)
| fedora 30 | 4.1.0 | hdgigante/opencv:v4.1.0 | ![MicroBadger Size (tag)](https://img.shields.io/microbadger/image-size/hdgigante/opencv/v4.1.0.svg)
| fedora 30 | 4.1.1 | hdgigante/opencv:v4.1.1 | ![MicroBadger Size (tag)](https://img.shields.io/microbadger/image-size/hdgigante/opencv/v4.1.1.svg)
| fedora 30 | 4.1.2 | hdgigante/opencv:v4.1.2 | ![MicroBadger Size (tag)](https://img.shields.io/microbadger/image-size/hdgigante/opencv/v4.1.2.svg)


## Usage

```bash
$ docker pull hdgigante/opencv:v3.4.6
$ docker pull hdgigante/opencv:v3.4.7
$ docker pull hdgigante/opencv:v3.4.8
$ docker pull hdgigante/opencv:v4.1.0
$ docker pull hdgigante/opencv:v4.1.1
$ docker pull hdgigante/opencv:v4.1.2
```

## Build

```
$ docker build -t opencv:v3.4.6 -f Dockerfile_3.4.6 .
$ docker build -t opencv:v3.4.7 -f Dockerfile_3.4.7 .
$ docker build -t opencv:v3.4.8 -f Dockerfile_3.4.8 .
$ docker build -t opencv:v4.1.0 -f Dockerfile_4.1.0 .
$ docker build -t opencv:v4.1.1 -f Dockerfile_4.1.1 .
$ docker build -t opencv:v4.1.2 -f Dockerfile_4.1.2 .
```

## Credits

Based on...

- [OpenCV tutorial](https://docs.opencv.org/trunk/dd/dd5/tutorial_py_setup_in_fedora.html)
