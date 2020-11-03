#!/bin/bash
set -euo pipefail

chmod a+w /dev/pts/0

set -m

lighttpd -D -f /etc/lighttpd/lighttpd.conf & 

php-fpm

fg %1
