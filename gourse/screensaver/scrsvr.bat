@echo off
set /a RND=n*%random%/32767
if %RND%==0 (start "" gource 1280x1024 -f --user-image-dir "\img" --hide filenames,mouse,progress --highlight-all-users --multi-sampling "D:\wamp\www\repos\repon1.txt")
if %RND%==1 (start "" gource 1280x1024 -f --user-image-dir "\img"--hide filenames,mouse,progress --highlight-all-users --multi-sampling "D:\wamp\www\repos\repo2.txt")
...
if %RND%==n-1 (start "" gource 1280x1024 -f --user-image-dir "\img" --hide filenames,mouse,progress --highlight-all-users --multi-sampling "D:\wamp\www\repos\repon.txt")
