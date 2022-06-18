#!/bin/bash -x

       echo "Welcome to Employee Wage Computation"
       EmpPresent=1;
       EmpAbsent=2;
       randomCheck=$((RANDOM%2+1));

       if [ $randomCheck -eq $EmpPresent ];
       then
               echo "Emp is Present"
       fi

       if [ $EmpAbsent -eq $randomCheck ];
       then
               echo "Emp is Absent"
       fi

       EmpPresent=1;
       randomCheck=$((RANDOM%2));

       if [ $randomCheck -eq $EmpPresent ];
       then

       EmpRatePerHrs=20;
       EmpHrs=8;
       salary=$(($EmpRatePerHrs*$EmpHrs));
else
   salary=0;
fi

      EmpPartTime=1;
      EmpFullTime=2;
      EmpRatePerHrs=20;
      randomCheck=$((RANDOM%3));

      if [ $EmpFullTime -eq $randomCheck ];
      then
             EmpHrs=8;
             echo "Emp is FullTime"

      elif [ $EmpPartTime -eq $randomCheck ];
      then
             EmpHrs=4;
             echo "Emp is PartTime"
else
   EmpHrs=0;
fi
