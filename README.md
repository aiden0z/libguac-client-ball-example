# guacamole server ball protocol

Just a guacamole server protcol example.

## How to run

```bash
docker-compose up -d
docker-compose exec guacd sh
cd /tmp/libugac-client-ball
./build.sh
```

then, access the http://localhost:8080, and select `BALL` protocol and input the correct guacd host addr and other fields with any value. Now, click Connect you will see a bounce ball.
