linux: clean
	./bin/linux.sh 2>> linuxsetup.log

clean:
	./bin/cleanup.sh 2>> linuxsetup.log
