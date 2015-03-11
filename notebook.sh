#!/bin/bash
# Strict mode
set -euo pipefail
IFS=$'\n\t'

bash -c 'source $OPENMDAODIR/bin/activate; ipython2 notebook --no-browser --port 8888 --ip=*  --matplotlib=inline'
