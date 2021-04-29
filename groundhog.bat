::grooundhog/otter/ferret
ECHO OFF
CLS
ECHO Testing Git Committer

echo %DATE%
echo %TIME%

git checkout main

git pull

git add .

git status -s

git commit -m "testing command prompt git commit"

git push -u origin main

ECHO git pushed to the origin completed