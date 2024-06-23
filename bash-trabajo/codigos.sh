parte 1
#!/bin/bash

numero_secreto=$((RANDOM % 100 + 1))
intentos_realizados=0
max_intentos=10  

echo "juego: adivina el numero"
echo "estoy pensando en un número entre 1 y 100."

while [ $intentos_realizados -lt $max_intentos ]
do
    echo -n "intenta adivinar el número: "
    read intento

    if ! [[ "$intento" =~ ^[0-9]+$ ]]; then
        echo "Por favor, ingresa un número válido."
        continue
    fi

    intentos_realizados=$((intentos_realizados + 1))

    if [ $intento -lt $numero_secreto ]; then
        echo "El número que estoy pensando es más mayor."
    elif [ $intento -gt $numero_secreto ]; then
        echo "El número que estoy pensando es más menor"
    else
        echo "¡Felicidades! ¡Adivinaste el número en $intentos_realizados intentos!"
        exit 0
    fi
done

echo " agotaste tus $max_intentos intentos. El número correcto era $numero_secreto."
parte 2
echo "Ingrese la localidad para obtener el clima:" 
read LOCALIDAD  

API_KEY="4e1320180f114303be9160433242006" 

URL="http://api.weatherapi.com/v1/current.json?key=${API_KEY}&q=${LOCALIDAD}" 

json=$(wget -qO- "$URL") 

temp_c=$(echo "$json" | jq -r '.current.temp_c') 


echo "Clima en ${LOCALIDAD}:"

echo

echo "Temperatura: ${temp_c} °C"
