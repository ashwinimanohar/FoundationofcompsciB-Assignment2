cd git-practice-03
git checkout main
mkdir dir1/dir2/foo
mkdir dir3/bar
mkdir dir3/bar_copy
git add .
git commit -m "file structure for main branch"
git push

git checkout -b branch1
cd dir1
mv dir2/foo foo
rm dir3/bar_copy
echo "hi">newfile1
git add .
git commit -m "Modify file structure for branch1"
git push --set-upstream origin branch1

git checkout -b branch2
mkdir dir1/dir2
mv dir1/foo dir1/dir2/foo_modified
touch dir1/dir3/newfile2
rm dir3/bar
git add .
git commit -m "Modify file structure for branch2"
git push --set-upstream origin branch2
