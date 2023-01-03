#!/bin/bash

cd /opt/cnaas/venv/cnaas-nms/src/

source ../../bin/activate

pytest --cov=cnaas_nms -p no:cacheprovider
EXITSTATUS="$?"
mv .coverage .coverage-pytest

exit $EXITSTATUS
