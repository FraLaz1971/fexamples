#!/usr/bin/awk -f
BEGIN {
    FS=","; 
    OFS=" "; 
    Fullname="";
    Sex=0;
    Age=0;
    cmHeight=1.0;
    kgWeight=1.0;
}
NR==1{
    print "#Name                Sex Age Height Weight";
    print "#                        (yr) (cm)  (kg)";
    
}
NR>1{
    Fullname=sprintf("%s %s",$1,$2);
    if ($3 == "M") 
        Sex=0;
    else if ($3 == "F")
        Sex=1;
    cmHeight=$5*2.54;
    kgWeight=$6*0.453592;
    printf("%-20s  %1d   %2d  %3d  %5.2f\n",Fullname ,Sex,$4,cmHeight,kgWeight);
    
}
END{
    print "XXX     YYY           9    0    0   0.01"
}
# survey of max N (10000 as default)
# dataset (file SURVEY.dat) containing info about people
# Name          columns 1-20
# Sex           column  23     (0=male, 1=female)
# Age (yr)      columns 27,28
# Height (cm)   columns 31-33
# Weight (kg)   columns 36-41  (nnn.dd)
# END OF DATASET ---> 9 in column 23
# 110     FORMAT(A20,2X,I1,3X,I2,2X,I3,2X,F5.2)
