git checkout -b branch2
echo "This is file4" > file4
git add file4
git commit -m "Add file4 to branch2"
echo "This is the modified content of file4" > file4
git checkout main
