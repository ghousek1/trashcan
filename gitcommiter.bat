ECHO OFF
CLS
ECHO Testing Git Committer
git checkout main
git add .
git status -s
git commit -m "testing command prompt git commit"
git push -u origin master

ECHO git pushed to the origin completed