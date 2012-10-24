#!/usr/bin/env bash
cp travisconfig/profile profile
cp travisconfig/change.properties change.properties
mkdir -p App/Config
mkdir -p ChangeTests/UnitTestWorkspace/App/Config
cp travisconfig/config/project.json App/Config/project.json
cp travisconfig/config/project.default.json App/Config/project.default.json
cp travisconfig/config/project.json ChangeTests/UnitTestWorkspace/App/Config/project.json
cp travisconfig/config/project.default.json ChangeTests/UnitTestWorkspace/App/Config/project.default.json
cp -R travisconfig/install.xml install.xml
sed -i 's|<current_dir>|'`pwd`'|g' App/Config/project.default.json
sed -i 's|<current_dir>|'`pwd`'|g' ChangeTests/UnitTestWorkspace/App/Config/project.default.json
