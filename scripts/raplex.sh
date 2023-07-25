#!/bin/bash

ra-verify > /dev/null
exit_code=$?

# verifica se a porta está iniciada
if [ $exit_code -eq 0 ]; then
  # iniciar o servidor
  ra-multiplex server &
fi