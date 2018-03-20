# Docker Opencv

[![Docker Build Status](https://img.shields.io/docker/build/devlogos/opencv.svg)](https://hub.docker.com/r/devlogos/opencv) [![Docker Pulls](https://img.shields.io/docker/pulls/devlogos/opencv.svg)](https://hub.docker.com/r/devlogos/opencv)

Docker images with Python 3 and OpenCV (+contrib) based on Fedora

See [docker hub](https://hub.docker.com/r/devlogos/opencv/)

## Components

- Fedora 27 ~ [https://hub.docker.com/_/fedora/](https://hub.docker.com/_/fedora/)
- Opencv 3.3.1 and 3.4.1 ~ [https://github.com/opencv/opencv](https://github.com/opencv/opencv)
- Opencv Contrib ~ [https://github.com/opencv/opencv_contrib](https://github.com/opencv/opencv_contrib)
- Python 3.6.4
- Tesseract 3.05.01
- and opencv dependencies

## Images

| dist | lang | opencv | image | size |
| :--- | :--- | :---: | :--- | :--- |
| fedora | python 3 | --- | devlogos/opencv:base | ![MicroBadger Size](https://img.shields.io/microbadger/image-size/devlogos/opencv/base.svg)
| fedora | python 3 | 3.3.1 | devlogos/opencv:3.3.1 | ![MicroBadger Size](https://img.shields.io/microbadger/image-size/devlogos/opencv/3.3.1.svg)
| fedora | python 3 | 3.4.1 | devlogos/opencv:3.4.1 | ![MicroBadger Size](https://img.shields.io/microbadger/image-size/devlogos/opencv/3.4.0.svg)

## Usage

```bash
$ docker pull devlogos/opencv:3.4.1
$ docker pull devlogos/opencv:3.3.1
```

## Credits

Based on...

- [OpenCV tutorial](https://docs.opencv.org/trunk/dd/dd5/tutorial_py_setup_in_fedora.html)
