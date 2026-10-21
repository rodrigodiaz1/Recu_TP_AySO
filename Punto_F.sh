mkdir -p ~/Punto_F
IP_PUB=$(curl -s ifconfig.me)
CPU_MODEL=$(grep "model name" /proc/cpuinfo | head -n1 | awk -F: '{print $2}' | xargs)
CPU_FREQ=$(grep "cpu MHz" /proc/cpuinfo | head -n1 | awk -F: '{print $2}' | xargs)

echo "Mi ip publica es: $IP_PUB" > ~/Punto_F/Filtro_Avanzado.txt
echo "CPU Modelo: $CPU_MODEL Frecuencia: ${CPU_FREQ}MHz" >> ~/Punto_F/Filtro_Avanzado.txt
