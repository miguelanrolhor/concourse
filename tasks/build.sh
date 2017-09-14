#!/bin/bash

set -e

./source-code/tasks/generate-settings.sh

cd source-code || echo "missing input resource: source-code"

echo "Using MAVEN_OPTS: ${MAVEN_OPTS}"

mvn verify ${MAVEN_ARGS}
cp -r target/*.jar ../build-artifact