
Repave code has been abandoned.  You might instead be interested in using BoxStarter (http://boxstarter.codeplex.com/).  To help get started, you may want to review how I am using BoxStarter: http://github.com/fschwiet/fschwiet-boxstarter)















Inspired by: http://blog.maartenballiauw.be/post/2011/11/28/Repaving-your-PC-the-easier-way.aspx

gotchas:

* run powershell as administrator, or disable UAC and be an administrator
* if the scripts ask if you want to reboot, choose not to reboot yet.  Then reboot when you get to the end of the script.


anticipated steps to configure host to run boxstarer projects:
  download & install boxstarter
  extract contents of github project to C:\Users\%username%\AppData\Roaming\Boxstarter
  from the same path, Set-BoxstarterShare


anticipated steps to run boxstarter projects:
  \\%computername%\Boxstarter\Boxstarter FschwietCore
  \\%computername%\Boxstarter\Boxstarter FschwietDev  
