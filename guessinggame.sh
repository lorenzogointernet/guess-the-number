function guessinggame {
x="play"
while [ $x = "play" ]
do
  numFile=$(ls | wc -l)
     echo "How many files are there in the current directory?"
     echo "Please enter the number:"
  read num
  y="play"
  while [ $y = "play" ]
  do
    if [ $num -gt $numFile ] 
    then
	   echo "It's too big... please try again:"
	  read num
    elif [ $num -lt $numFile ] 
    then
	   echo "It's too small... please try again:"
	  read num
    elif [ $num -eq $numFile ]
    then
	   echo "Congratulations are correct!"
	  let "y=end"
          let "x=end"
    else
           echo "Please enter a valid value!"
          read num 
    fi
  done
done
}
guessinggame
echo "The game is over!"
