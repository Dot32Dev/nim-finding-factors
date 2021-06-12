#? replace(sub = "\t", by = " ")
from strutils import parseInt

echo "\n" & "\e[1m" & "Find factors for any given number with bruteforce!" & "\e[0m"
echo "\e[2m" & "I experienced difficulty in setting the text output colour, unlike in rust" & "\e[0m"

var num: int
while true:
	echo "Please input your number:"
	var input = readLine(stdin)
	try: 
		num = parseInt(input)
		break
	except:
		echo "That is not a valid number!"

echo ""
for i in 1..num+1:
	if num mod i == 0:
		echo $(num div i) & " x " & $i

echo "\e[2m" & "All factors have been found" & "\e[0m"

# nim c -r main.nim