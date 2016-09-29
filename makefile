#macros
GPP=g++

all: build doc

#archive: colors.h game.cc game.h main.cc makefile othello.cc othello.h piece.h
#	rm -f *.o game
#	tar -cvzf HW5.tar.gz colors.h game.cc game.h main.cc makefile othello.cc othello.h piece.h 

build: game

game: game.o othello.o main.o
	$(GPP) *.o -o game

game.o: game.h game.cc
	$(GPP) -c game.cc

othello.o: othello.h othello.cc piece.h game.h
	$(GPP) -c othello.cc

main.o: game.h othello.h main.cc
	$(GPP) -c main.cc

doc: colors.h game.cc game.h main.cc makefile othello.cc othello.h piece.h
	-doxygen Doxyconfig

clean:
	-rm -f *.o core game
	-rm -r html
	-rm -r latex
