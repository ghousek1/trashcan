::grooundhog/otter/ferret
ECHO OFF

CLS

::ECHO Testing Git Committer

:: Add CLS(clear terminal) for every Line to hide execution

git checkout main

CLS

git pull

CLS

git add .

CLS

git status -s

CLS

git commit -m "Commit %DATE% _ %TIME% "

CLS

git push -u origin main

::ECHO git push to the origin completed

CLS