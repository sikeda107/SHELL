#!/bin/bash
# readonly FILENAME="getEnv$(date '+%F').txt"
FILENAME="getEnv$(date '+%F').txt"
echo "fileout -> $FILENAME"

# echo " ">>$FILENAME
# cat >> $FILENAME

echo "cat /etc/centos-release" > $FILENAME
cat /etc/centos-release >> $FILENAME

echo "cat /proc/cpuinfo" >> $FILENAME
cat /proc/cpuinfo | grep "model name">> $FILENAME

echo "cat /proc/meminfo" >> $FILENAME
cat /proc/meminfo | grep "MemTotal">> $FILENAME

echo "gcc --version">>$FILENAME
gcc --version | grep "gcc" >> $FILENAME

echo " lspci | grep VGA">>$FILENAME
lspci | grep VGA >> $FILENAME

echo "nvidia-smi">>$FILENAME
nvidia-smi | grep "NVIDIA-SMI">> $FILENAME

echo "nvcc --version">>$FILENAME
nvcc --version | grep "release">> $FILENAME

echo "nvprof">>$FILENAME
nvprof --version | grep "Release" >> $FILENAME

unset FILENAME
echo "Finish..."
