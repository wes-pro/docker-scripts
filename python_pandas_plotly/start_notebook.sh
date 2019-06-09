#!/bin/bash
#
# Author: Michal Wesolowski (http://mwesolowski.com)
#

docker run -d --rm \
  --name "ppp" \
  -p 127.0.0.1:8888:8888 \
  -v /export/docker/notebooks:/notebooks \
  -v /export/docker/in:/in \
  -v /export/docker/out:/out \
  ppp \
  /bin/bash -c "jupyter notebook --notebook-dir=/notebooks  --NotebookApp.token='' --ip='0.0.0.0' --allow-root --no-browser"

sleep 2

sensible-browser http://127.0.0.1:8888/tree
