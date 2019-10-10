# Docker OpenCV

Docker images with opencv and py3 based on fedora and alpine

![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/hdgigante/opencv.svg) ![Docker Pulls](https://img.shields.io/docker/pulls/hdgigante/opencv.svg)

## Components

- [OpenCV](https://github.com/opencv/opencv) and [contrib](https://github.com/opencv/opencv_contrib)
- Python 3
- Tesseract
- and opencv image dependencies

## Images

| dist | opencv | image | size
| :--- | :--- | :--- | :--- |
| fedora 30 | 3.4.8 | hdgigante/opencv:fedora-opencv3 | ![MicroBadger Size (tag)](https://img.shields.io/microbadger/image-size/hdgigante/opencv/fedora-opencv3.svg)
| fedora 30 | 4.1.2 | hdgigante/opencv:fedora-opencv4 | ![MicroBadger Size (tag)](https://img.shields.io/microbadger/image-size/hdgigante/opencv/fedora-opencv4.svg)
| alpine 3.10 | 3.4.8 | hdgigante/opencv:alpine-opencv3 | ![MicroBadger Size (tag)](https://img.shields.io/microbadger/image-size/hdgigante/opencv/alpine-opencv3.svg)
| alpine 3.10 | 4.1.2 | hdgigante/opencv:alpine-opencv4 | ![MicroBadger Size (tag)](https://img.shields.io/microbadger/image-size/hdgigante/opencv/alpine-opencv4.svg)


## Usage

```bash
$ docker pull hdgigante/opencv:fedora-opencv3
$ docker pull hdgigante/opencv:fedora-opencv4
$ docker pull hdgigante/opencv:alpine-opencv3
$ docker pull hdgigante/opencv:alpine-opencv4
```

## Credits

Based on...

- [OpenCV tutorial](https://docs.opencv.org/trunk/dd/dd5/tutorial_py_setup_in_fedora.html)
