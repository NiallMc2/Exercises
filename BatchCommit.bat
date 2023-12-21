@echo off
cls
git status

echo **************************
echo Performing an add for all file in this directory
git add .
git status

echo **************************
set /p CommitMessage="Enter the commit message: "
git commit -m %CommitMessage%
git status

echo *************************
echo Pushing to GITHUB repository
git push -u origin main
echo *************************

echo Done!