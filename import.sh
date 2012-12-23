#!/bin/bash -ex
tag=2.1.2
dst=src/main/resources/org/kohsuke/stapler/require
wget -O $dst/require.js     http://requirejs.org/docs/release/$tag/comments/require.js
wget -O $dst/require-min.js http://requirejs.org/docs/release/$tag/minified/require.js
mvn -B release:update-versions -DdevelopmentVersion=$tag-1-SNAPSHOT
