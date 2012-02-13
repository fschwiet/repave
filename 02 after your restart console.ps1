
# Chocolatey stuff
iex ((new-object net.webclient).DownloadString("http://bit.ly/psChocInstall"))

cinst virtualclonedrive
cinst sysinternals
#cinst adobereader  #ninit'd
cinst msysgit
cinst fiddler
#cinst filezilla    #ninit'd
#cinst skype        #ninit'd
#cinst tortoisesvn
#cinst tortoisehg

cinst ProgrammersNotepad

# install programmer's notepad, and set configuration
cinst console-devel
cp .\console2.config.xml "$env:userprofile\AppData\Roaming\Console\console.xml"

