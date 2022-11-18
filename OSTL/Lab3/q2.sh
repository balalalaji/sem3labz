
echo "Enter number of odd no:"
read n
i=0
sum=1
while [ `expr $i` -lt $n ]
do
if [ `expr $sum % 2` != 0 ]
then
echo $sum
sum=`expr $sum + 2`
i=`expr $i + 1`
fi 
done