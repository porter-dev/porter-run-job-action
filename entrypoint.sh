#!/usr/bin/env bash

# manual validation of required inputs (https://github.com/actions/runner/issues/1070)

export PORTER_HOST=${INPUT_HOST}
export PORTER_CLUSTER=${INPUT_CLUSTER:?input \"cluster\" not set or empty}
export PORTER_PROJECT=${INPUT_PROJECT:?input \"project\" not set or empty}
export PORTER_TOKEN=${INPUT_TOKEN:?input \"token\" not set or empty}

: "${INPUT_JOB:?input \"job\" not set or empty}"
: "${INPUT_NAMESPACE:?input \"namespace\" not set or empty}"

# write the values.yaml file
echo '
paused: false
' > values-job.yaml

porter update --app "$INPUT_JOB" --namespace "$INPUT_NAMESPACE" --values ./values-job.yaml