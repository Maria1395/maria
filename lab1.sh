
echo "Enter value a"
read a
echo "Enter value b"
read b
echo "Enter operations"
echo "1.Addition 2.Subtraction 3.Multiplication 4.Division 5.Modulas"
read op
case $op
in
1)echo "Result="$(($a + $b));;
2)echo "Result="$(($a - $b));;
3)echo "Result="$(($a * $b));;
4)echo "Result="$(($a / $b));;
5)echo "Result="$(($a % $b));;
esac
