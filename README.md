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

Then make should work in the ion-test (or ion-test-master, if you downloaded the zip file) directory.

To run:

You will need to have a kernel that has the following options enabled:

	CONFIG_ION=y
	CONFIG_ION_TEST=y

If your platform does not have ION support, you'll probably want to enable:

	CONFIG_ION_DUMMY=y


You can check if you're kernel is ok, by making sure /dev/ion and /dev/ion-test exist.

Then as root, run ion-unit-tests in the ion-test/tests directory.
