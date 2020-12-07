#! /bin/bash
# cars.sh
# Luis Rivas 

echo type the number 1 to enter a new car
echo type the number 2 to display the list of cars
echo type the number 3 to quit and exit the program
read -r CHOICE
while [ "$CHOICE" -ne 3 ]
do
	case "$CHOICE" in 
		"1") echo "enter the year of the car" 
			read -r YEAR
			echo "enter the make of the car"
			read -r MAKE
			echo "enter the model of the car"
			read -r MODEL
			CAR=$YEAR:$MAKE:$MODEL
			echo "$CAR" >> My_old_cars;;
		"2") echo | sort | cat My_old_cars;;
		"3") ;;
	esac
	echo type the number 1 to enter a new car
	echo type the number 2 to display the list of cars
	echo type the number 3 to quit and exit the program
	read -r CHOICE
done
echo "Goodbye"
