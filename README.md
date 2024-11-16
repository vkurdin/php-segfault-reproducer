Segfault reproducer:

```shell
 docker run --rm -it -v `pwd`:/app -w /app php:8.4.0RC4-cli ./run.sh
```

PHP version:
```
PHP 8.4.0RC4 (cli) (built: Nov 12 2024 03:30:31) (NTS)
Copyright (c) The PHP Group
Built by https://github.com/docker-library/php
Zend Engine v4.4.0RC4, Copyright (c) Zend Technologies
```