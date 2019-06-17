#SRC = $(wildcard ./src/*.c)
#LIBS = $(wildcard ./libs/*.h)
#OBJ = $(subst .c,.o, $(subst src,, $(SRC)))
FLAGS = -Wall -pedantic -lglut -lGL -lGLU -lm

all: boom

boom: main.o draws.o gui.o logica.o
	gcc -o boom main.o draws.o gui.o logica.o $(FLAGS)

main.o: main.c libs/draws.h libs/gui.h libs/logica.h
	gcc -o main.o main.c -c $(FLAGS)

draws.o: src/draws.c libs/draws.h
	gcc -o draws.o src/draws.c -c $(FLAGS)

gui.o: src/gui.c libs/gui.h
	gcc -o gui.o src/gui.c -c $(FLAGS)

logica.o: src/logica.c libs/logica.h
	gcc -o logica.o src/logica.c -c $(FLAGS)

#boom: $(OBJ)
#	gcc -o boom $(OBJ)

#%.o: %.c %.h
#	gcc -o $@ $< $(FLAGS)

#main.o: main.c $(LIBS)
#	gcc -o main.o main.c $(FLAGS)


