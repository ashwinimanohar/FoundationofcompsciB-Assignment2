
cd git-practice-03

git checkout -b branch1
rm -r dir1/dir2/foo
rm dir3/bar_copy
touch newfile1
git add .
git commit -m "Modify file structure for branch1"

git checkout -b branch2
mkdir dir1/dir2
mv dir1/foo dir1/dir2/foo_modified
touch dir1/dir3/newfile2
git add .
git commit -m "Modify file structure for branch2"
