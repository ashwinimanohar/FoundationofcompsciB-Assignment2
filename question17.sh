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
cd ..
cd dir3
git rm bar_copy
git add bar_copy
git commit -m "delete dir3/bar_copy"
git push --set-upstream origin branch1
cd ..
echo "hi">newfile1
git add .
git commit -m "Modify file structure for branch1"
git push --set-upstream origin branch1

git checkout -b branch2
git rm -r dir3
git add dir3
git commit -m "delete dir3"
git push --set-upstream origin branch2
cd dir1
mkdir dir2
mv foo dir2/foo_modified
rm newfile1
mkdir dir3
cd dir3
touch newfile2
cd ..
git add .
git commit -m "Modify file structure for branch2"
git push --set-upstream origin branch2
