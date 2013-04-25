MumbleDLLBind
=============

Everything needed to have a UDK game report the local client's position to Link, the mumble plugin that gives positional audio

This is designed currently for Windows only, preferably a version newer than XP (I did this on Windows 7)
I also used UDK-2013-02 version

Steps to get going

1)install mumble http://mumble.sourceforge.net/

note for the following steps your UDK folder may not be in C:\ you will need to find it wherever it is

2)replace the directory C:\UDK\UDK-2013-02\Binaries\Win32\UserCode with folder of the same name in the repository

3)replace the directory C:\UDK\UDK-2013-02\Development\Src\MyMod with the folder of the same name in the repository

4)go to C:\UDK\UDK-2013-02\UDKGame\Config\DefaultEngine.ini
  add a line:
  --------------------------
  [UnrealEd.EditorEngine]
  
+EditPackages=UTGame

+EditPackages=UTGameContent

+EditPackages=MyMod;;ADD THIS LINE
  -------------------------------------

5)Start the UDK editor, you will be prompted to compile the scripts, click yes

6)in your map, go to view -> world properties -> game type -> set default game type to mymod, also set PIE gametype to mymod

7)open kismet and set up a sequence to look like this:

http://s1278.photobucket.com/user/Fateful-Image/media/Kismet4Mumble_zps40845560.jpg.html

8)run mumble client, then play game in editor or outside. Be sure you run the 32 bit version of UDK since the dll will not run in 64 bit UDK. If you want to be sure you are running 32 bit navigate to

C:\UDK\UDK-2013-02\BINARIES\WIN32

then open command prompt and run "UDK.exe mapname" without the quotes. Note that your map must be in the 

C:\UDK\UDK-2013-02\UDKGame\Content\Maps folder for this to work.

Enjoy!
