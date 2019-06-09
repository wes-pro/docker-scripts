# python_pandas_plotly

### Description

Idea of this docker is to have complete Python/Pandas/Plotly environment with Jupyter Notebook and possibly other packages which I'll add later - as an independent container. 

Previously I've used similar stack directly on my Ubuntu - but was tired of necessity to follow all dependencies and upgrades. 

There are simple scripts for my convenience:

build-image.sh - creates docker image with [CONDA stack](<https://docs.conda.io/en/latest/>) supplemented by Plotly and Cufflinks.

start_notebook.sh - starts Jupyter Notebook inside container (accessible only from host)

stop_notebook.sh - stops container

### Requirements

For now I use hard-coded directories and image name. You can modify this in start_notebook.sh script.

Personally I use 3 folders:

* /export/docker/in - where I usually put input (raw) files
* /export/docker/out - where I save result files
* /export/docker/notebooks - here are notebook source files (*.ipynb) I work on

And my image name is just *ppp*.

### Security

I consciously disable security token when start Jupyter Notebook inside docker. The docker is not bound to my public address but to localhost (127.0.0.1) instead - so it is not accessible from external network. 



