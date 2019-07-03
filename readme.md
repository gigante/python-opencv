# Docker Opencv

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

| dist | lang | opencv | image | build | size | pulls
| :--- | :--- | :---: | :--- | :--- | :--- | :--- |
| fedora 27 | python 3.6.4 | 3.3.1 | hdgigante/fedora-opencv:3.3.1 | ![Docker Cloud Automated build](https://img.shields.io/docker/cloud/automated/hdgigante/opencv-fedora/3.3.1.svg) | ![MicroBadger Size (tag)](https://img.shields.io/microbadger/image-size/hdgigante/opencv-fedora/3.3.1.svg) | ![Docker Pulls](https://img.shields.io/docker/pulls/hdgigante/opencv-fedora/3.3.1.svg)
| fedora 27 | python 3.6.4 | 3.4.1 | hdgigante/fedora-opencv:3.4.1 | ![Docker Cloud Automated build](https://img.shields.io/docker/cloud/automated/hdgigante/opencv-fedora/3.4.1.svg) | ![MicroBadger Size (tag)](https://img.shields.io/microbadger/image-size/hdgigante/opencv-fedora/3.4.1.svg) | ![Docker Pulls](https://img.shields.io/docker/pulls/hdgigante/opencv-fedora/3.4.1.svg)


## Usage

```bash
$ docker pull hdgigante/fedora-opencv-3.4.1
```

## Credits

Based on...

- [OpenCV tutorial](https://docs.opencv.org/trunk/dd/dd5/tutorial_py_setup_in_fedora.html)
