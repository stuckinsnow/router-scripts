nano myscript.sh
# clear nvram
#!/bin/sh
sleep 10
for line in `nvram show | grep =$ `; do var=${line%*=}; nvram unset $var; done; nvram commit
logger 'nvram1 script executed'

chmod +x myscript.sh
./myscript.sh
