#!/bin/sh

touch tst.awk 
echo "{ split($4,t,/[[ :\/]/)\n
    mthNr = sprintf("%02d",(index("JanFebMarAprMayJunJulAugSepOctNovDec",t[3])+2)/3)
    \n curTime = t[4] mthNr t[2] t[5] t[6] t[7] }\n curTime >= minTime " >> tst.awk
    

awk -v minTime=$(date -d '60 min ago' '+%Y%m%d%H%M%S') -f tst.awk /var/log/httpd/access_log > index.html
