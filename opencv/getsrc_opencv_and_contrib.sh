set -e

folder=${HOME}/src

cd $folder

if [ ! -f opencv-3.4.7.zip ]; then
  wget https://github.com/opencv/opencv/archive/3.4.7.zip -O opencv-3.4.7.zip
fi
if [ ! -f opencv_contrib-3.4.7.zip ]; then
  wget https://github.com/opencv/opencv_contrib/archive/3.4.7.zip -O opencv_contrib-3.4.7.zip
fi

if [ -d opencv-3.4.7 ]; then
  echo "** ERROR: opencv-3.4.7 directory already exists"
  exit
fi


if [ -d opencv_contrib-3.4.7 ]; then 
  echo "** ERROR: opencv_contrib-3.4.7 already exists"
  exit
fi



