set -e
folder=${HOME}/src

cd $folder

if [ ! -d gst-plugins-bad ]; then 
  git clone https://github.com/GStreamer/gst-plugins-bad.git
fi

cd gst-plugins-bad

git checkout 1.14.5

cd ext/opencv

rm gstgrabcut.*
sed -i '/grabcut\.h/,+0d' gstopencv.cpp
sed -i '/grabcut_plugin/,+1d' gstopencv.cpp
sed -i '/grabcut/,+0d' Makefile.am
sed -i '/grabcut/,+0d' meson.build



