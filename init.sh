#!/usr/bin/env bash
cp travisconfig/profile profile
cp travisconfig/change.properties change.properties 
cp travisconfig/config/project.xml App/Config/project.xml
cp travisconfig/config/project.default.xml App/Config/project.default.xml
cp -R travisconfig/install.xml install.xml
sed -i 's|<current_dir>|'`pwd`'|g' change.properties
