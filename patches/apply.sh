#!/bin/bash

 cd ../../../..
 cd packages/apps/Settings
 patch -p1 -b < ../../../device/xiaomi/jasmine/patches/dev_info.patch
 git clean -f -d
 cd ../../..
 echo Successfuly patched! Go ahead and start building! @ Manish4586
