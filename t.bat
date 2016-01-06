xcopy "C:\Users\Joe Neuman\Desktop\template" /E /I
set /p UserInputPath= New Project Name?
rename RenameNewProject %UserInputPath%
cd %UserInputPath%
git init
git add .
git commit -m "start"
set /p UserUrl= Create repo and past URL here:
git remote add origin %UserUrl%
git push origin master
call code .
call live-server
