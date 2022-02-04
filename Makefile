objects := game.o commands.o map.o
srcs := $(wildcard *.c)

game: $(objects)

DEPDIR := .deps
DEPFLAGS = -MT $@ -MMD -MP -MF $(DEPDIR)/$*.d

COMPILE.c = $(CC) $(DEPFLAGS) $(CFLAGS) $(CPPFLAGS) -c

%.o : %.c
%.o : %.c $(DEPDIR)/%.d | $(DEPDIR)
	$(COMPILE.c) $<

$(DEPDIR):
	mkdir -p $@

depfiles := $(srcs:%.c=$(DEPDIR)/%.d)
$(depfiles):

include $(wildcard $(DEPFILES))

clean:
	$(RM) *.o game
