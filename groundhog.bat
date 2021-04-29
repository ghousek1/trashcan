::grooundhog/otter/ferret
ECHO OFF
CLS
ECHO Testing Git Committer

git checkout main

git pull

git add .

git status -s

git commit -m "Commit %DATE% _ %TIME% "

git push -u origin main

ECHO git push to the origin completed