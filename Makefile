FC=f77 -g -O2
SRC = $(wildcard src/*.f)
OBJ = obj/*.o obj/*.obj
FFLAGS = 
LDFLAGS = -Llib
TARGET0 = circle
TARGET1 = inpdat
TARGET2 = matrix
TARGET3 = sumn
TARGET4 = while
TARGETS = while sumn matrix inpdat circle
all: $(TARGETS)
obj/$(TARGET0).o: src/circle.f
	$(FC) -c   $< -o obj/circle.o $(FFLAGS)
$(TARGET0): obj/circle.o
	$(FC) -o circle $< $(LDFLAGS)
obj/$(TARGET1).o: src/inpdat.f
	$(FC) -c   $< -o obj/inpdat.o $(FFLAGS)
$(TARGET1): obj/inpdat.o
	$(FC) -o inpdat $< $(LDFLAGS)
obj/$(TARGET2).o: src/matrix.f
	$(FC) -c   $< -o obj/matrix.o $(FFLAGS)
$(TARGET2): obj/matrix.o
	$(FC) -o matrix $< $(LDFLAGS)
obj/$(TARGET3).o: src/sumn.f
	$(FC) -c   $< -o obj/sumn.o $(FFLAGS)
$(TARGET3): obj/sumn.o
	$(FC) -o sumn $< $(LDFLAGS)
obj/$(TARGET4).o: src/while.f
	$(FC) -c   $< -o obj/while.o $(FFLAGS)
$(TARGET4): obj/while.o
	$(FC) -o while $< $(LDFLAGS)
install: all
	mv $(TARGETS) bin
.PHONY: clean
clean:
	rm -f $(OBJ) $(TARGETS)
distclean: clean
	rm -f bin/* Makefile
