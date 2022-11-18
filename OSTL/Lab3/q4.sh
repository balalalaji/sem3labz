echo "Enter a number: "
read num
pro=1
for i in $(seq 1 $num)
do
    pro=$((pro*i))
done 
echo "Factorial=$pro"
