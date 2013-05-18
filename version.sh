#!/bin/sh

OLD_VERSION=$1
NEW_VERSION=$2

sed -i "" s/${OLD_VERSION}/${NEW_VERSION}/g ja/index.md
sed -i "" s/${OLD_VERSION}/${NEW_VERSION}/g en/index.md
