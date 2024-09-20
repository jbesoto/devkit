# Compiler and Tools
CC       := gcc
CFLAGS   :=
LDFLAGS  :=
LIBS     :=

# Directories
SRCDIR   := src
INCDIR   := include
BUILDDIR := build
BINDIR   := bin

TARGET   := $(BINDIR)/TARGET_NAME_HERE

SOURCES  := $(wildcard $(SRCDIR)/*.c)
OBJECTS  := $(patsubst $(SRCDIR)/%.c, $(BUILDDIR)/%.o, $(SOURCES))

.PHONY: all
all: $(TARGET)

$(TARGET): $(OBJECTS)
	@echo "Linking $@..."
	@mkdir -p $(BINDIR)
	$(CC) $(LDFLAGS) -o $@ $^ $(LIBS)

# Before compiling, ensure that build directory exists
$(BUILDDIR)/%.o: $(SRCDIR)/%.c | $(BUILDIR)
	@echo "Compiling $<..."
	@mkdir -p $(BUILDDIR)
	$(CC) $(CFLAGS) -c $< -o $@

$(BUILDDIR):
	@mkdir -p $(BUILDDIR)

.PHONY: clean
clean:
	@echo "Cleaning up..."
	@rm -rf $(BUILDDIR) $(BINDIR)

.PHONY: run
run: $(TARGET)
	@echo "Running $(TARGET)..."
	@$(TARGET)
