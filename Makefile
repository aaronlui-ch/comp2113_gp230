#"make main" to start game#
verbal.o: verbal.cpp game.h
	g++ -c verbal.cpp

visual.o: visual.cpp game.h
	g++ -c visual.cpp

score.o: score.cpp game.h
	g++ -c score.cpp

main.o: main.cpp game.h
	g++ -c main.cpp

main: verbal.o visual.o score.o main.o
	g++ verbal.o visual.o score.o main.o -o main

play: verbal.o visual.o score.o main.o
	g++ verbal.o visual.o score.o main.o -o main
	./main


.PHONY : clean
clean :
	-rm main.o score.o visual.o verbal.o



