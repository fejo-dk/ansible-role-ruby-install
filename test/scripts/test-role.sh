#!/bin/sh

# See https://github.com/travis-ci/travis-ci/issues/1066
# Fail if one of the commands of this script fails
set -e

ansible-lint .
kitchen diagnose --all
kitchen test

set +e
