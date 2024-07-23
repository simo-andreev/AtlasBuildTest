#!/bin/bash

git clone git@github.com:simo-andreev/AtlasBuildTest.git

cd AtlasBuildTest

./gradlew assembleDebug

DIRNAME=$(grep "versionCode\ " ./app/build.gradle | tr -s '[:blank:]')

mkdir -p /home/jenkins/builds/"$DIRNAME"

cp app/build/outputs/apk/debug/*.apk /home/jekins/builds/"$DIRNAME"/
