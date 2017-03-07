debug=false
VideoResolution$="1920x1080x25"

v=CreateObject("roVideoPlayer")
p=createobject("roMessagePort")
v.SetPort(p)
v.SetVolume(50)

mode = CreateObject("roVideoMode")
mode.SetMode(VideoResolution$)

count=0
playcount=0
countFound=0
countMax=100
DIM mylist[countMax]

read:
list=ListDir("/")

for each file in list
	if ucase(right(file,3)) = "MOV" or ucase(right(file,3)) = "MP4" or ucase(right(file,3)) = "MPG" or ucase(right(file,3)) = "VOB" or ucase(right(file,2)) = "TS" then 
		mylist[countFound]=file
		countFound=countFound+1
	endif
next


play:
if countfound=0 then goto read

if debug print mylist[count]
ok=v.PlayFile(mylist[count])
playcount=playcount+1

'advancing count
if count = countFound-1 then
	count=0
else
	count = count+1
endif



if ok=0 then
	if debug then print "Playback failed"
	goto play
endif



loop:
	msg=wait(0,p)
	if debug print type(msg)
if type(msg) = "roVideoEvent" then
		if msg.GetInt() = 8 then
			goto play
		endif
	endif
	
goto loop
