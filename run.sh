#!/usr/bin/env sh

# For some (maybe docker-related) reason running the existing script alone does not causing segfaults;
# The segfaults were originally discovered while benchmarking the code using the phpbench/phpbench framework.
# The framework generates files in /tmp for each iteration, with multiple revolutions for the benchmarked subject inside.
#NAME=/app/runner.php
NAME=/app/runner_new.php
cp /app/runner.php $NAME

# Remove\disable opcache or remove jit=tracing line and segfaults will go away
php \
  -dzend_extension=opcache.so \
  -dopcache.enable_cli=1 \
  -dopcache.jit=tracing \
  $NAME