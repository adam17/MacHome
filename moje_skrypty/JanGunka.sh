# ! /bin/sh
# youtube-dl -f 249/43 http://www.youtube.com/blabla
# 
ADRES="https://youtu.be/kv6s5n86KkQ?list=PLKGnFgBkzrwKFlqMnFcr3duWlpHqw8lv6";

# sprawdzam, jakie formaty są obsługiwane.
# Wychodzi na to, że nie każdy film mogę ściągnąć w formacie 249.
youtube-dl -F ${ADRES}

# Więc użyję tego
#youtube-dl -f 249/43 ${ADRES} 

# ściągnięte z http://bytefreaks.net/gnulinux/bash/ffmpeg-extract-audio-from-webm-to-mp3
for FILE in *.webm; do
  ffmpeg -i "${FILE}" -vn -ab 128k -ar 44100 -y "${FILE%.webm}.mp3";
done;
