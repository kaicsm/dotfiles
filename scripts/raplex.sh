#!/bin/bash

ra-verify > /dev/null
exit_code=$?

# verifica se a porta não está iniciada
if [ $exit_code -eq 0 ]; then
  # se estiver:
  # iniciar o servidor
  ra-multiplex server &
fi
