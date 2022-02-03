objects := game.o commands.o map.o

game: $(objects)

$(objects): %.o : %.h common.h
game.o: commands.h map.h

clean:
	$(RM) *.o game
