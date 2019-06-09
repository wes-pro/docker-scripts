# python_pandas_plotly

### Description

build-image.sh - creates docker image with CONDA stack supplemented by Plotly and Cufflinks.

start_notebook.sh - starts Jupyter Notebook inside container (accessible only from host)

stop_notebook.sh - stops container

### Requirements

For now I use hard-coded directories mounted inside container, you can modify them inside start_notebook.sh script.

I use 3 folders:

* /export/docker/in - where I usually put input (raw) files
* /export/docker/out - where I save result files
* /export/docker/notebooks - here are notebook source files (*.ipynb) I work on



