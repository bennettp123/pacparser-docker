# pacparser-docker

A docker image for pacparser.

# Examples

1. command-line
```
curl -s http://proxy.site.internal/proxy.pac | docker run --rm -i bennettp123/pacparser pactester -p - -u http://example.com
```

2. python
```
import pacparser
pacparser.init()
pacparser.just_find_proxy(pacfile='/path/to/pacfile', url='http://example.com')
pacparser.cleanup()
```

