
# ==================================================================================== [ADB] ===== #

export ADB_SERVER_SOCKET=tcp:$(cat /etc/resolv.conf | awk '/nameserver/ {print $2}'):5037
