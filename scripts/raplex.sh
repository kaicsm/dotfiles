#!/bin/bash

ra-verify > /dev/null
exit_code=$?

# verifica se a porta não está iniciada
if [ $exit_code -eq 0 ]; then
  # então inicar o ra-multiplex 
  ra-multiplex server &
fi
