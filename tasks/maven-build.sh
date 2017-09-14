#!/bin/bash

set -e

./source-code-resource/tasks/generate-settings.sh

cd source-code || echo "missing input resource: source-code"

echo "Using MAVEN_OPTS: ${MAVEN_OPTS}"

mvn verify ${MAVEN_ARGS}