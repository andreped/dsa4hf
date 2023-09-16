---
title: 'Digital Slide Archive: Platform for working with large microscopy images.'
colorFrom: indigo
colorTo: indigo
sdk: docker
app_port: 8080
emoji: 🔬
pinned: false
license: mit
---

# dsa4hf

This project was made to showcase developed plugins for Digital Slide Archive through on Hugging Face spaces.

The project is a work-in-progress. I will make a release when I have it working. Stay tuned!

## Getting started

#### Deployment

When the solution is ready, the website should be accessible on [Hugging Face](https://huggingface.co/spaces/andreped/dsa4hf).

#### Development

```
docker build -t dsa4hf .
docker run -it -p 8080:8080 dsa4hf
```

To go inside docker image and debug, at the bottom of the Dockerfile, add `ENTRYPOINT [ "/bin/sh" ]` before running.

## Credit

I did not develop Digital Slide Archive, only implemented some plugins and showcased deployment on Hugging Face space.
Credit should be given to the developers of DSA for making such an amazing open software solution!
