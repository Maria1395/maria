echo "Enter the number :"
read n
x=$n
rev=0
while [ $x -ne 0 ]
do
	a=`(expr $x % 10)`
	rev=`(expr $a + $rev \* 10)`
	x=`(expr $x / 10)`

done
if [ $n -eq $rev ]
then
	echo $n is a Palindrome number
else
	echo $n is not a Palindrome number
fi


