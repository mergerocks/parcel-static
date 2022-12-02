#!/usr/bin/env sh

set -e

npm run build:github

cd dist

echo > .nojekyll

git init
git checkout -B main
git add -A
git commit -m 'gh-pages'

git push -f main:gh-pages

cd -
