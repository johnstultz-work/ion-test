ion-test
========

ION unit tests

These are the ION unit tests created by Colin Cross, copied from AOSP's system/core/libion directory.

Created here just to allow folks to quickly get the tests up and running outside the Android environment.

This is still a little rough, so apologies for any hiccups you hit.

On Ubuntu to get this building you need to build the gtest framework:
$ apt-get install libgtest-dev
$ cd /usr/src/gtest
$ sudo bash
# cmake CMakeLists.txt
# make

Then make should work in the ion-test directory.

