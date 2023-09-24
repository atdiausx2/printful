#!/bin/bash
# save best model to github 
cp saved_models/best_model_vgg.pth printful
cd printful
rm -rf .git
rm -rf .gitattributes

git config --global user.email "ceidw@protonmail.com"
git config --global user.name "atdiausx2"
git config --global init.defaultBranch main
git init
# git add /content/printful/best_model_vgg.pth


git-lfs track "*.pth"
git add .
echo "tracking"
echo "the list of tracked files are:"
git-lfs ls-files
git commit -m " Initial commit "
# git remote remove origin
echo "removed origin"
git remote add origin https://atdiausx2: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@github.com/atdiausx2/printful.git
echo "added  origin"
git pull --rebase origin main

git push --set-upstream origin main:main

git commit --message="Added tuned model"

# return for any case 
cd ..
