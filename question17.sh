cd dir3
git branch branch1
git branch branch2
cd dir3
cp bar bar_copy
cd ..
git add .
git commit -m "file structure for main branch"
git push

git checkout -b branch1
touch newfile1
mv dir1/dir2/foo dir1/foo
git add .
git commit -m "Modify file structure for branch1"
git push

git checkout -b branch2
cd dir1
cd dir2
mv foo foo_modified
cd ..
cd ..
cd dir3
rm bar
touch newfile2
cd ..
mv dir3 dir1
git add .
git commit -m "Modify file structure for branch2"
git push
