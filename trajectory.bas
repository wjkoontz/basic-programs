
10 sw=40 :pi=3.14 :c=42
20 d=60 :v=4.2 :dt=.25 :g=.5
30 print chr$(147) :gosub 400 
40 a=d*pi/180 :x=0 :y=24 :gosub 200 
50 gosub 300 :rem print vars
60 print chr$(19);"angle(deg),velocity,dt,g,clear(y/n)"
70 input d,v,dt,g,cl$ 
80 if cl$="n" or cl$="no" then 40
90 goto 30
200 rem shoot 
210 t=0 :vx=cos(a)*v :vy=sin(a)*v*-1
220 c=32 :gosub 2000 :c=42 :gosub 2000
230 t=t+dt :x=vx*t :y=vy*t+(g/2)*t^2+24 :rem rc
231 rem x=x+vx :y=y+vy :vy=vy+g :rem ic
240 if y<24.5 then 220
270 return
300 rem print vars home down right 
310 print chr$(19);chr$(17);chr$(29);
320 print d;",";v;",";dt;",";g;",";"n"
330 return
400 rem print ruler home then 25 down
410 print chr$(19) :fori=1to25 :printchr$(17) :next i
420 fori=1tosw/10-1 :print"-123456789"; :nexti :print"-1234567";
430 return
2000 rem plot c at x,y
2010 ifx<0orx>39ory<0ory>24 then 2040
2020 ml=32768+int(y+.5)*40+int(x+.5)
2030 poke ml,c
2040 return

