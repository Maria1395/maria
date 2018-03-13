c=0
while [ $c -le 9 ]
do
echo "1) Read your name and display it."
echo "2) Print working directory"
echo "3)Create a directory of your name"
echo "4) Change to your directory just made"
echo "5) Create a file inside your name and address."
echo "6)Display the content of file."
echo "7)Archive the folder"
echo "8)match a sample regular expression against text in a file"
echo "9)Extract the folder"
echo "10)Exit"
read c
case $c
in
1) echo "Enter your name"
   read name
   echo "Name:$name";;
2) echo "Current directory is"
   pwd;;
3) echo "Enter your name"
   read name 
   mkdir $name;;
4) echo "Enter directory name"
   read name 
   cd $name
   pwd;;
5) echo "Enter the file name to create"
   read fn
   echo "Enter the data"
   cat > fn.txt;;
6) echo "Enter the file name"
   read name 
   cat $name;;
7) cd ..
   tar -czvf zipped.zip $name;;
8) echo "Find the file you want to search the word in?"   
   read filename  
   echo "Enter the word you want to find."   
   read word  
   grep $word $filename;;
9) tar -xzvf zipped.zip;;
esac

done
