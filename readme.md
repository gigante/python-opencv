# Docker Opencv

(https://travis-ci.com/gigante/fedora-opencv) [![Docker Build Status](https://img.shields.io/docker/build/devlogos/fedora-opencv.svg)](https://hub.docker.com/r/devlogos/fedora-opencv) [![Docker Pulls](https://img.shields.io/docker/pulls/devlogos/fedora-opencv.svg)](https://hub.docker.com/r/devlogos/fedora-opencv)

Docker images with Python 3 and OpenCV (+contrib) based on Fedora

See [docker hub](https://hub.docker.com/r/devlogos/fedora-opencv/)

## Components

- Fedora 27 ~ [https://hub.docker.com/_/fedora/](https://hub.docker.com/_/fedora/)
- Opencv 3.3.1 and 3.4.1 ~ [https://github.com/opencv/opencv](https://github.com/opencv/opencv)
- Opencv Contrib ~ [OpenCV Contrib](https://github.com/opencv/opencv_contrib)
- Python 3.6.4
- Tesseract 3.05.01
- and opencv dependencies

## Images

| dist | lang | opencv | image | size |
| :--- | :--- | :---: | :--- | :--- |
| fedora | python 3 | --- | devlogos/fedora-opencv:base | ![MicroBadger Size](https://img.shields.io/microbadger/image-size/devlogos/fedora-opencv/base.svg)
| fedora | python 3 | 3.3.1 | devlogos/fedora-opencv:3.3.1 | ![MicroBadger Size](https://img.shields.io/microbadger/image-size/devlogos/fedora-opencv/3.3.1.svg)
| fedora | python 3 | 3.4.1 | devlogos/fedora-opencv:3.4.1 | ![MicroBadger Size](https://img.shields.io/microbadger/image-size/devlogos/fedora-opencv/3.4.0.svg)

## Usage

```bash
$ docker pull devlogos/fedora-opencv:3.4.1
$ docker pull devlogos/fedora-opencv:3.3.1
```

## Credits

Based on...

- [OpenCV tutorial](https://docs.opencv.org/trunk/dd/dd5/tutorial_py_setup_in_fedora.html)
