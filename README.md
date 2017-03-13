# BrightSign
XD1030 Players @BM for HBF 2017
+ A  (L, M, R)  Middle|Master (BrightAuthor app version 3.7)
+ B  (L, M, R)  Middle|Master (BrightAuthor app version 3.5)

#Local SDCard Publishing
- Must be FAT formatted SDHC/SDXC ok!
- Power on/off the player to recognize memory card is loaded.

#Summary
We got Side A and Side B to display a seamless play over the three screen. Unfortunately, I dumped the test cut for Side A to run another cut to test for Side B.

Results:
-Side B requires a perfect cut to display a seamless video play. 
-Side A requires a little overlap to interpolate for the seamless play. If too much, it will show the interpolation like some eerie effect. 
-Also, there isn't a need for edge treatment for the merge on side A.

Here is the basic hack recipe.

Video editing : cut
-The output and display is 1920 x 1080, start a project with that setting. 
-Import the original high-resolution footage and scale 3x (=3screens).
-Crop for Left, Center and Right.
-Export 1920 x 1080 .mov or .mp4 ok as long as the codec is H.264 25 fps

Load the memory card
Load the video with the continuous play script.
-autorun.brs
-The script specifically recognizes 1920x1080 25fps videos. Repeated for simplicity.

Power on and off Brightsign hub in order for it to recognize the change in content.

No worries of brightsign authorizing app and network settings. Cut and load with the script and it is good. 





