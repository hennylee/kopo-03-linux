#!/bin/sh
echo "date test"
echo "date1 : $(date +%Y%m%d)"
echo "date2 : $(date +%Y)YEAR $(date +%m)MONTH $(date +%d)DAY"
echo "date3 : $(date +%H)HOUR $(date +%M)MIN $(date +%s)SEC"

echo `date`
d_date=`date +%Y%m%d`
echo $d_date
exit 0
