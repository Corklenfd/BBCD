#!/bin/sh
if [ ! -f UUID ]; then
  UUID="b24d57c6-bf13-4d05-8217-9118149c0ff2"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

