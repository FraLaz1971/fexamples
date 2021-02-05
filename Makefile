FC=f77 -g -O2
SRC = $(wildcard src/*.f)
OBJ = obj/*.o obj/*.obj
FFLAGS = 
LDFLAGS = -Llib
TARGET0 = circle
TARGET1 = energies
TARGET2 = getfilnam
TARGET3 = inpdat
TARGET4 = matrix
TARGET5 = sumn
TARGET6 = sunearth
TARGET7 = trunc
TARGET8 = types
TARGET9 = while
TARGETS = while types trunc sunearth sumn matrix inpdat getfilnam energies circle
all: $(TARGETS)
obj/$(TARGET0).o: src/circle.f
	$(FC) -c   $< -o obj/circle.o $(FFLAGS)
$(TARGET0): obj/circle.o
	$(FC) -o circle $< $(LDFLAGS)
obj/$(TARGET1).o: src/energies.f
	$(FC) -c   $< -o obj/energies.o $(FFLAGS)
$(TARGET1): obj/energies.o
	$(FC) -o energies $< $(LDFLAGS)
obj/$(TARGET2).o: src/getfilnam.f
	$(FC) -c   $< -o obj/getfilnam.o $(FFLAGS)
$(TARGET2): obj/getfilnam.o
	$(FC) -o getfilnam $< $(LDFLAGS)
obj/$(TARGET3).o: src/inpdat.f
	$(FC) -c   $< -o obj/inpdat.o $(FFLAGS)
$(TARGET3): obj/inpdat.o
	$(FC) -o inpdat $< $(LDFLAGS)
obj/$(TARGET4).o: src/matrix.f
	$(FC) -c   $< -o obj/matrix.o $(FFLAGS)
$(TARGET4): obj/matrix.o
	$(FC) -o matrix $< $(LDFLAGS)
obj/$(TARGET5).o: src/sumn.f
	$(FC) -c   $< -o obj/sumn.o $(FFLAGS)
$(TARGET5): obj/sumn.o
	$(FC) -o sumn $< $(LDFLAGS)
obj/$(TARGET6).o: src/sunearth.f
	$(FC) -c   $< -o obj/sunearth.o $(FFLAGS)
$(TARGET6): obj/sunearth.o
	$(FC) -o sunearth $< $(LDFLAGS)
obj/$(TARGET7).o: src/trunc.f
	$(FC) -c   $< -o obj/trunc.o $(FFLAGS)
$(TARGET7): obj/trunc.o
	$(FC) -o trunc $< $(LDFLAGS)
obj/$(TARGET8).o: src/types.f
	$(FC) -c   $< -o obj/types.o $(FFLAGS)
$(TARGET8): obj/types.o
	$(FC) -o types $< $(LDFLAGS)
obj/$(TARGET9).o: src/while.f
	$(FC) -c   $< -o obj/while.o $(FFLAGS)
$(TARGET9): obj/while.o
	$(FC) -o while $< $(LDFLAGS)
install: all
	mv $(TARGETS) bin
.PHONY: clean
clean:
	rm -f $(OBJ) $(TARGETS)
distclean: clean
	rm -f bin/* Makefile
