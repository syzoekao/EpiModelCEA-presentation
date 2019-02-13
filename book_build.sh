#!/bin/bash

gitbook build
cd _book
git init
git commit --allow-empty -m 'Update docs'
git checkout -b gh-pages
git add .
git commit -am 'Update docs'
git remote add origin https://github.com/caleb-easterly/EpiModelCEA-WADOH-presentation.git
git push origin gh-pages --force

