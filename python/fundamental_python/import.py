import os

print(os.path.isdir('/etc'))
print(os.path.isfile('/etc/passwd'))

try:
    import json
except ImportError:
    import simplejson as json

print(json.dumps({'python':3.4}))
