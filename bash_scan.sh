#!/bin/sh
#
# echo $?  - 0 = ok
#         <> 0 = nao ok
for srv in server1 server2
  do
    ssh -q root@$srv 'echo -n "$(uname -n) ... ";\
      timeout 1 bash -c "cat < /dev/null > /dev/tcp/correio.bancobmg.com.br/25" 2> /dev/null;\
      echo $?'
 done
 
