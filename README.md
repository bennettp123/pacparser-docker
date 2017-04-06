# pacparser-docker

A docker image for pacparser.

# Examples

1. command-line
```
curl -s http://proxy.site.internal/proxy.pac | pactester -p - -u http://example.com
```

2. python
```
import pacparser
pacparserr.init()
pacparser.just_find_proxy(pacfile='/path/to/pacfile', url='http://example.com')
pacparser.cleanup()
```

