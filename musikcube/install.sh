sudo apt-get install build-essential clang cmake libboost-thread1.67-dev libboost-system1.67-dev libboost-filesystem1.67-dev libboost-date-time1.67-dev libboost-atomic1.67-dev libboost-chrono1.67-dev libogg-dev libvorbis-dev libavutil-dev libavformat-dev libswresample-dev libncursesw5-dev libasound2-dev libpulse-dev pulseaudio libmicrohttpd-dev libmp3lame-dev libcurl4-openssl-dev libev-dev libssl-dev libtag1-dev libopenmpt-dev

git clone https://github.com/clangen/musikcube.git --recursive
cd musikcube
cmake -G "Unix Makefiles" .
make
sudo make install
musikcube
