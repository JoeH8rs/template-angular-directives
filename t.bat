cd C:\Users\Joe Neuman\Desktop\devmtn
set /p UserInputPath= New Project Name?
rename RenameNewProject %UserInputPath%
cd %UserInputPath%
xcopy "C:\Users\Joe Neuman\Desktop\template" /E /I
git init
git add .
git commit -m "start"
set /p UserUrl= Create repo and past URL here:
git remote add origin %UserUrl%
git push origin master
call code .
call live-server
