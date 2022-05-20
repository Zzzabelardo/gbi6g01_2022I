#! /bin/bash
echo "Primera forma"
for i in 2 4 6 7 8
do 
	x=$((i**3))
	echo "valor $i, cubo $x"
done

echo "Segunda forma"
for i in {5..15..3}
do
        x=$((i**3))
        echo "valor $i, cubo $x"
done

echo "Tercera forma"
for (( i=10; i<100; i++ ))
do
        x=$((i**3))
        echo "valor $i, cubo $x"
done
