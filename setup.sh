
HOST=$(hostname)

if [ $HOST = xterm ]; then
    echo server root >> /etc/hosts
    echo server root >> /root/.rhosts
fi

if [ $HOST = server ]; then
    echo xterm root >> /etc/hosts
    echo xterm root >> /root/.rhosts
    tc qdisc add dev eth0 root tbf rate 1024bit latency 1ms burst 1540
    echo 0 > /proc/sys/net/ipv4/tcp_syncookies
fi

if [ $HOST = attacker ]; then
    echo attacker
fi

/usr/sbin/inetd