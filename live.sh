if [ -z "$DISPLAY" ]; then
    echo "Must provide DISPLAY in environment" 1>&2
    exit 1
fi
ffmpeg -f x11grab -framerate 24 -video_size 1366x768 -i $DISPLAY -vf scale=896:504 -crf 36 -g 120 -preset superfast -pix_fmt yuv420p -f hls -hls_time 5 -hls_list_size 5 -hls_flags delete_segments out.m3u8 > out.log 2>&1 < /dev/null &
echo $! > out.pid
python3 -m http.server 8000 > srv.log 2>&1 < /dev/null &
echo $! > srv.pid

