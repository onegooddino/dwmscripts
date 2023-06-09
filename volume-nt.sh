perc=$(pulsemixer --get-volume | cut -f1 -d' ')
if [ $(pulsemixer --get-mute) -eq 1 ];
then
	echo ' '
	exit
elif [ $perc -lt 20 ];
then
	icon=
elif [ $perc -lt 60 ];
then 
	icon=
else 
	icon= 
fi
echo $icon$perc
