df -h | grep "/$" | awk '{print $(NF-2)}'


