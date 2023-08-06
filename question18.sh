cd git-practice-04

git branch

git checkout main
git merge ready/*
git add .
git commit -m "Merge ready branches to main"

git branch -d $(git branch | grep "ready/")

git checkout main
git pull
git checkout update/*
git merge main
git add .
git commit -m "Update update branches with the latest changes from main"

git branch -d $(git branch | grep "update/")
