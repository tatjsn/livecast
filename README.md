# Livecast
Live screen cast with HLS server

# Requirements
* Ubuntu with X11 environment
* Ffmpeg
* Python 3

# How to use
Start recording
```
sh live.sh
```
Live screen cast be able to access via http://localhost:8000

DISPLAY environment variable is required. On Ubuntu it should be defined by default but if it is not, it can be specified like this:
```
DISPLAY=":0" sh live.sh
```

for other user:

```
DISPLAY=":0" sudo -u [user] sh live.sh
```

Stop recording
```
sh kill.sh
```

# Logging
```
tail out.log
tail srv.log
```

