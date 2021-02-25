FC=f77 -g -O2
SRC = $(wildcard src/*.f)
OBJ = obj/*.o obj/*.obj
FFLAGS = 
LDFLAGS = -Llib
TARGET0 = circle
TARGET1 = energies
TARGET2 = first
TARGET3 = firstfmt
TARGET4 = getfilnam
TARGET5 = inpdat
TARGET6 = matrix
TARGET7 = solvequad
TARGET8 = strings
TARGET9 = sum10
TARGET10 = sumn
TARGET11 = sunearth
TARGET12 = test23
TARGET13 = trunc
TARGET14 = types
TARGET15 = while
TARGETS = while types trunc test23 sunearth sumn sum10 strings solvequad matrix inpdat getfilnam firstfmt first energies circle
all: $(TARGETS)
obj/$(TARGET0).o: src/circle.f
	$(FC) -c   $< -o obj/circle.o $(FFLAGS)
$(TARGET0): obj/circle.o
	$(FC) -o circle $< $(LDFLAGS)
obj/$(TARGET1).o: src/energies.f
	$(FC) -c   $< -o obj/energies.o $(FFLAGS)
$(TARGET1): obj/energies.o
	$(FC) -o energies $< $(LDFLAGS)
obj/$(TARGET2).o: src/first.f
	$(FC) -c   $< -o obj/first.o $(FFLAGS)
$(TARGET2): obj/first.o
	$(FC) -o first $< $(LDFLAGS)
obj/$(TARGET3).o: src/firstfmt.f
	$(FC) -c   $< -o obj/firstfmt.o $(FFLAGS)
$(TARGET3): obj/firstfmt.o
	$(FC) -o firstfmt $< $(LDFLAGS)
obj/$(TARGET4).o: src/getfilnam.f
	$(FC) -c   $< -o obj/getfilnam.o $(FFLAGS)
$(TARGET4): obj/getfilnam.o
	$(FC) -o getfilnam $< $(LDFLAGS)
obj/$(TARGET5).o: src/inpdat.f
	$(FC) -c   $< -o obj/inpdat.o $(FFLAGS)
$(TARGET5): obj/inpdat.o
	$(FC) -o inpdat $< $(LDFLAGS)
obj/$(TARGET6).o: src/matrix.f
	$(FC) -c   $< -o obj/matrix.o $(FFLAGS)
$(TARGET6): obj/matrix.o
	$(FC) -o matrix $< $(LDFLAGS)
obj/$(TARGET7).o: src/solvequad.f
	$(FC) -c   $< -o obj/solvequad.o $(FFLAGS)
$(TARGET7): obj/solvequad.o
	$(FC) -o solvequad $< $(LDFLAGS)
obj/$(TARGET8).o: src/strings.f
	$(FC) -c   $< -o obj/strings.o $(FFLAGS)
$(TARGET8): obj/strings.o
	$(FC) -o strings $< $(LDFLAGS)
obj/$(TARGET9).o: src/sum10.f
	$(FC) -c   $< -o obj/sum10.o $(FFLAGS)
$(TARGET9): obj/sum10.o
	$(FC) -o sum10 $< $(LDFLAGS)
obj/$(TARGET10).o: src/sumn.f
	$(FC) -c   $< -o obj/sumn.o $(FFLAGS)
$(TARGET10): obj/sumn.o
	$(FC) -o sumn $< $(LDFLAGS)
obj/$(TARGET11).o: src/sunearth.f
	$(FC) -c   $< -o obj/sunearth.o $(FFLAGS)
$(TARGET11): obj/sunearth.o
	$(FC) -o sunearth $< $(LDFLAGS)
obj/$(TARGET12).o: src/test23.f
	$(FC) -c   $< -o obj/test23.o $(FFLAGS)
$(TARGET12): obj/test23.o
	$(FC) -o test23 $< $(LDFLAGS)
obj/$(TARGET13).o: src/trunc.f
	$(FC) -c   $< -o obj/trunc.o $(FFLAGS)
$(TARGET13): obj/trunc.o
	$(FC) -o trunc $< $(LDFLAGS)
obj/$(TARGET14).o: src/types.f
	$(FC) -c   $< -o obj/types.o $(FFLAGS)
$(TARGET14): obj/types.o
	$(FC) -o types $< $(LDFLAGS)
obj/$(TARGET15).o: src/while.f
	$(FC) -c   $< -o obj/while.o $(FFLAGS)
$(TARGET15): obj/while.o
	$(FC) -o while $< $(LDFLAGS)
install: all
	mv $(TARGETS) bin
.PHONY: clean
clean:
	rm -f $(OBJ) $(TARGETS)
distclean: clean
	rm -f bin/* Makefile
