objects := game.o commands.o map.o

game: $(objects)
	gcc -o game $(objects)

game.o: game.c common.h commands.h map.h
	gcc -c game.c

commands.o: commands.c commands.h common.h
	gcc -c commands.c

map.o: map.c map.h common.h
	gcc -c map.c

clean:
	$(RM) *.o game
