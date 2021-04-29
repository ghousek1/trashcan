::grooundhog/otter/ferret
ECHO OFF
CLS
ECHO Testing Git Committer

git checkout main

git pull

git add .

git status -s

git commit -m "Commit %DATE% %TIME% _testing command prompt git commit"

git push -u origin main

ECHO git pushed to the origin completed