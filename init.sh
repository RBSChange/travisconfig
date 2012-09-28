#!/usr/bin/env bash
cp travisconfig/profile profile
cp travisconfig/change.properties change.properties 
cp -R travisconfig/config config
cp -R travisconfig/install.xml install.xml
sed -i 's|<current_dir>|'`pwd`'|g' change.properties
