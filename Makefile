objects := game.o commands.o map.o

game: $(objects)

game.o: common.h commands.h map.h
commands.o: commands.h common.h
map.o: map.h common.h

clean:
	$(RM) *.o game
