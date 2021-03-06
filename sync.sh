sudo apt-get install git-core gnupg flex bison gperf build-essential zip curl zlib1g-dev libc6-dev lib32ncurses5-dev ia32-libs-multiarch ia32-libs-multiarch:i386 libgphoto2-2:i386 libsane:i386 libgd2-xpm:i386 ia32-libs x11proto-core-dev libx11-dev lib32readline-gplv2-dev lib32z-dev libgl1-mesa-dev g++-multilib mingw32 tofrodos python-markdown libxml2-utils python-software-properties xsltproc libx11-dev:i386 gcc-4.6 g++-4.6 gcc-4.6-multilib g++-4.6-multilib
echo "\n"|sudo add-apt-repository ppa:webupd8team/java
#sudo apt-get update && sudo apt-get install oracle-java6-installer
#sudo apt-get install openjdk-7-jdk
git config --global user.email "android"
git config --global user.name "android"
mkdir ~/bin
curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
export PATH=$PATH:~/bin
export CC=gcc-4.6
export CXX=g++-4.6
export JAVA_HOME=/usr/lib/jvm/java-6-oracle
export PATH=$PATH:$JAVA_HOME/bin
export ANDROID_JAVA_HOME=$JAVA_HOME
export PATH=$PATH:~/bin
mkdir -p ~/jcrom_work
mkdir -p ~/jcrom_work/android
export JCROM_ROOT=~/jcrom_work
export ANDROID_ROOT=~/jcrom_work/android
cd $ANDROID_ROOT
echo "y"|repo init -g 'default,-mips' -q -u https://github.com/JCROM-Android/jcrom_manifest.git -b lolli
wget https://ww-command-line-wrapper.googlecode.com/files/ww.c
gcc ww.c
./a.out "repo sync -q -j4" 120
#repo sync -q -j4
#repo sync -f -q
#repo sync -q -j4
#if test $? -ne 0; then  repo sync -q -j4 ;fi 
#if test $? -ne 0; then  repo sync -q -j4 ;fi 
#if test $? -ne 0; then  repo sync -q -j4 ;fi 
#if test $? -ne 0; then  repo sync -q -j4 ;fi 
#if test $? -ne 0; then  repo sync -q -j4 ;fi 
#if test $? -ne 0; then  repo sync -q -j4 ;fi 
#if test $? -ne 0; then  repo sync -q -j4 ;fi 
#if test $? -ne 0; then  repo sync -q -j4 ;fi 
#if test $? -ne 0; then  repo sync -q -j4 ;fi 
#if test $? -ne 0; then  repo sync -q -j4 ;fi 
#if test $? -ne 0; then  repo sync -q -j4 ;fi 
#if test $? -ne 0; then  repo sync -q -j4 ;fi 
#if test $? -ne 0; then  repo sync -q -j4 ;fi 
#if test $? -ne 0; then  repo sync -q -j4 ;fi 
#if test $? -ne 0; then  repo sync -q -j4 ;fi 
cd $ANDROID_ROOT/device/lge/hammerhead
./extract-files.sh
export USE_CCACHE=1
#cd $JCROM_ROOT
#export ARCH=arm
#export CROSS_COMPILE=$ANDROID_ROOT/prebuilts/gcc/linux-x86/arm/arm-eabi-4.8/bin/arm-eabi-
#git clone https://android.googlesource.com/kernel/msm.git -b android-msm-hammerhead-3.4-lollipop-release kernel/nexus5
#cd kernel/nexus5
#make hammerhead_defconfig
#make -j8
#cp arch/arm/boot/zImage-dtb $ANDROID_ROOT/device/lge/hammerhead-kernel/zImage-dtb
cd $ANDROID_ROOT
source build/envsetup.sh
lunch jcrom_hammerhead-user
make -s jcrom -j8
