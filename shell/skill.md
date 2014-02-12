1. awk last column
    df -h | grep "/$" | awk '{print $(NF-2)}'


