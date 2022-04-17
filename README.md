# ISS ASSIGNMENT(2021101050)
## &copy; RAMANDEEP SINGH <br>

### Q1). We were provided with a file called quotes.txt. On which we had to perform the following operations.<br><br>

#### _Quotes.txt can be downloaded from the site given: https://gist.github.com/95ych/48d4cfc8d4014ec9d709bbfc5d3b2057_

- Q1a - Remove empty lines
- Q2a - Remove duplicates

### **Q1**

For Q1a we were given a file quotes.txt on which we had to perform operations and remove duplicate lines

Command used:

`grep . quotes.txt`<br>

This command prints the output in the terminal with only the lines which have some content and that's why blank lines aren't printed and we were successfully able to remove emoty lines from quotes.txt
<br>
***

### **Q1b**

Quotes.txt conatined many duplicate lines and in this que we were supposed to remove duplicates line from it.

Command used:

`awk '!a[$0]++' quotes.txt`

_This command prints the output in the terminal and remove duplicates line from a file which can be done easily by using the awk command as showm:_

***
***

### **Q2**

#### Using the same quotes.txt file, a shell script or a one-line command was supposed to be written which parses the file and give a file **speech.txt** as an output where each file has to b written ***author once said, "quote"***

Command used:

`awk -F~ '{ print $2 " once said, \""$1"\"" }' quotes.txt > speech.txt`

awk command with -F, sets the field seperator, FS, to value.

Read the string before `~` sign and after it, then transform the line.

For eg.

##### _John Wooden once said, "Things work out best for those who make the best of how things work out. "_

***
***

### **Q3**

Read any file as input and perform follwing using one shell script lines

- Print the Size of file in bytes
- Count total number of lines in the file
- Count total number of Words in the file
- Count words in each line and print Line No: <> - Count of Words:
- Provide of the list of repeated works and number of times they are repeated. Print as Word:
<> - Count of repetition: []
***
### **Q3a**

Print the size of file in bytes

Command Used: 

```
#!/bin/bash

filepath=$1

size=$(wc --bytes < $filepath)

echo "The size of the file $1 is $size Bytes"
```

> It will print the the size of the given file in bytes
using the wc --bytes
<br>
For eg.
The size of the file ____ is ____ Bytes
***
### **Q3b**

Count total number of lines in the file

Command Used: 

```
#!/bin/bash

filepath=$1

number_of_lines=$(wc --lines < $filepath)

echo "Number of Lines in the file $filepath is $number_of_lines"
```

> It will print the total no. of lines in the given file using the wc --lines
<br>
Number of Lines in the file ____ is ____
***
### **Q3c**

Count total number of words in the file

Command Used: 

```
#!/bin/bash

filepath=$1

number_of_words=$(wc --word < $filepath)

echo "Number of words in $filepath is $number_of_words"
```

> It will print the total no. of words in the given file using the wc --word
<br>
Number of words in ______ is _______

***
### **Q3d**

Count words in each line and print Line No: <> - Count of Words:

Command Used:

```
#!/bin/bash

filepath=$1

awk '$0="Line No: "NR" - Count of Words "NF' $filepath 
```

> This command prints the line no. along with the number of words in that respective line<br>
For eg. Line No: __ - __

***
### **Q3e**

Provide the list of repeated words and the no. of times they are repeated

Command used:

```
#!/bin/bash

cat $1 | tr " " "\n" | tr -cd '[:alnum:]\n'"'" | sort | uniq -cd | awk '{print $2 " - " $1}'
```

Prints the list of repeated words with no. of times they are repated.

***
***

## **Q4**

Write a logic to sort input data using arrays and conditional statements.

Sample Input:

` 21,22,34,1,7,90,101,2,4,8,45 `

Command used:

```
#!/bin/bash

IFS=','
read -r -a nos
let n=${#nos[@]}
for (( i = 0; i < $n ; i++ ))
do
for (( j = $i; j < $n; j++ ))
do
if [ ${nos[$i]} -gt ${nos[$j]}  ]; 
then
t=${nos[$i]}
nos[$i]=${nos[$j]}
nos[$j]=$t
fi
done
done

for (( i=0; i < $n; i++ ))
do
echo -n ${nos[$i]}" "
done
echo
```

Using bubble sort we sorted the sample inputs and printed them on cmd.

***
***

## **Q5a**

Print the string in reverse

```
#!/bin/bash

str="$1"
reversed_string=""

len=${#str}

for (( i=$len-1; i>=0; i-- ))
do
   reversed_string="$reversed_string${str:$i:1}"
done
echo "$reversed_string"
```

***

## **Q5b**

replace letters in the reverse output with subsequent letter

```
#!/bin/bash

str="$1"
len=${#str}
for((i=$len-1;i>=0;i--))
do
     reverse="$reverse${str:$i:1}"
done
final=$reverse

letter2='z'

for letter in {y..a}
do
final=${final//[$letter]/$letter2}
letter2=$(tr 1-9a-zA-Z 0-9a-zA-Y <<<"$letter2")
done
echo $final
```

***

## **Q5c**

Read the String as Input and print only the half string in reverse.

```
#!/bin/bash

str="$1"
len=${#str}
for((i=$len/2-1;i>=0;i--))
do
     reverse="$reverse${str:$i:1}"
done
for((i=$len/2;i<len;i++))
do
     reverse="$reverse${str:$i:1}"
done
echo $reverse
```

***
***

# Common instructions to run a sh file

## sh stands for shell file

To execute a shell file open the terminal using

` CTRL + ALT + T  `

Navigate to the directory with sh files

USE:
***
***

` ./Q1a.sh `<br> 
` ./Q1b.sh `<br>
***
` ./Q2.sh `<br>
***
` ./Q3a.sh `<br>
` ./Q3b.sh `<br>
` ./Q3c.sh `<br>
` ./Q3d.sh `<br>
` ./Q3e.sh `<br>
***
` ./Q4.sh `<br>
***
` ./Q5a.sh `<br>
` ./Q5b.sh `<br>
` ./Q5c.sh `<br>

***
***

If you do not have permission to execute the sh file

USE:

` chmod +x Q1.sh `
and then use ` ./Q1a.sh `

Basically it gives execute permission (chmod) using +x
<BR><BR><BR>

***
***
<BR>

# GITHUB LINK:

https://github.com/theramandeep04/ISS-Assignment-1