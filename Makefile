VPATH := src:include
CPPFLAGS += -Iinclude

builddir := build
objects := $(addprefix $(builddir)/, map.o game.o commands.o)

$(builddir)/game: $(objects) | $(builddir)

$(objects): $(builddir)/%.o: %.c %.h common.h | $(builddir)
	$(CC) $(CPPFLAGS) $(CFLAGS) -c -o $@ $<

$(builddir):
	mkdir -p $@

clean:
	$(RM) $(objects)
