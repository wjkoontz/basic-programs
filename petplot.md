# petplot
Simple subroutine to plot characters onto the screen.  

Based on PET screen ram at 32768 and either 40 or 80 column screen.

USAGE:
Simply set variables x and y to screen coordinates, set c to a character code (poke not chr$).
Then gosub 2000 (or whatever line you used) to plot c at x,y

40 character version for PET 2001 etc.

```
2000 rem plot c at x,y
2010 ifx<0orx>39ory<0ory>24 then 2040
2020 ml=32768+int(y+.5)*40+int(x+.5)
2030 poke ml,c
2040 return
```


80 character version for PET business machines
```
2000 rem plot c at x,y
2010 ifx<0orx>79ory<0ory>24 then 2040
2020 ml=32768+int(y+.5)*80+int(x+.5)
2030 poke ml,c
2040 return
```

c64 version
```
2000 rem plot c at x,y
2010 ifx<0orx>39ory<0ory>24 then 2040
2020 ml=1024+int(y+.5)*40+int(x+.5)
2030 poke ml,c
2040 return
```

