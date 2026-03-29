#!/bin/sh

# --- Переменные ---
host=192.168.34.150
alpine_bridge=192.168.34.151
alpine_nat_1=10.0.10.246
alpine_nat_2=10.0.10.167
alpine_route_1=10.0.11.170
alpine_route_2=10.0.11.171
vshte=vshte.ru

# Проверяем переменную 'host'
echo ""
echo ""
echo "Check 'host' (${host}):"
ping -c 5 ${host}

# Проверяем переменную 'alpine_bridge'
echo ""
echo ""
echo "Check 'alpine_bridge' (${alpine_bridge}):"
ping -c 5 ${alpine_bridge}

# Проверяем переменную 'alpine_nat_1'
echo ""
echo ""
echo "Check 'alpine_nat_1' (${alpine_nat_1}):"
ping -c 5 ${alpine_nat_1}

# Проверяем переменную 'alpine_nat_2'
echo ""
echo ""
echo "Check 'alpine_nat_2' (${alpine_nat_2}):"
ping -c 5 ${alpine_nat_2}

# Проверяем переменную 'alpine_route_1'
echo ""
echo ""
echo "Check 'alpine_route_1' (${alpine_route_1}):"
ping -c 5 ${alpine_route_1}

# Проверяем переменную 'alpine_route_2'
echo ""
echo ""
echo "Check 'alpine_route_2' (${alpine_route_2}):"
ping -c 5 ${alpine_route_2}

# Проверяем переменную 'vshte'
echo ""
echo ""
echo "Check 'vshte' (${vshte}):"
ping -c 5 ${vshte}