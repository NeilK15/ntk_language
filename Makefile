testing: testing.o
	cc testing.o -o testing.x

testing.o: testing.c
	cc -c testing.c -o testing.o