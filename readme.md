# Docker Opencv

![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/hdgigante/opencv.svg) ![Docker Pulls](https://img.shields.io/docker/pulls/hdgigante/opencv.svg)

Docker images with Python 3 and OpenCV (+contrib) based on Fedora

See [docker hub](https://hub.docker.com/r/devlogos/opencv/)

## Components

- [OpenCV](https://github.com/opencv/opencv) e [Contrib](https://github.com/opencv/opencv_contrib) - 3.6.4 e 4.1.0
- Tesseract
- and opencv image dependencies

## Images

| dist | lang | opencv | image | size
| :--- | :--- | :--- | :--- | :--- |
| fedora 30 | python 3 | 3.4.6 | hdgigante/opencv:fedora-python3-opencv3 | ![MicroBadger Size (tag)](https://img.shields.io/microbadger/image-size/hdgigante/opencv/fedora-python3-opencv3.svg)
| fedora 30 | python 3 | 4.1.0 | hdgigante/opencv:fedora-python3-opencv4 | ![MicroBadger Size (tag)](https://img.shields.io/microbadger/image-size/hdgigante/opencv/fedora-python3-opencv4.svg)
| alpine | python 3 | 3.4.6 | hdgigante/opencv:alpine-python3-opencv3 | ![MicroBadger Size (tag)](https://img.shields.io/microbadger/image-size/hdgigante/opencv/alpine-python3-opencv3.svg)
| alpine | python 3 | 4.1.0 | hdgigante/opencv:alpine-python3-opencv4 | ![MicroBadger Size (tag)](https://img.shields.io/microbadger/image-size/hdgigante/opencv/alpine-python3-opencv4.svg)


## Usage

```bash
$ docker pull hdgigante/opencv:fedora-python3-opencv3
$ docker pull hdgigante/opencv:fedora-python3-opencv4
$ docker pull hdgigante/opencv:alpine-python3-opencv3
$ docker pull hdgigante/opencv:alpine-python3-opencv4
```

## Credits

Based on...

- [OpenCV tutorial](https://docs.opencv.org/trunk/dd/dd5/tutorial_py_setup_in_fedora.html)
