FC=f77 -g -O2
FL=f77
EEXE = 
OEXE = .o
SRC = $(wildcard src/*.f)
OBJ = obj/*
FFLAGS = -c
FDFLAGS = -o
LDFLAGS = -Llib
SRCDIR = src/
OBJDIR = obj/
BINDIR = bin/
RM = rm -f
TARGET0 = circle
TARGET1 = energies
TARGET2 = filei
TARGET3 = fileio
TARGET4 = fileir
TARGET5 = fileo
TARGET6 = fileoo
TARGET7 = fileorig
TARGET8 = first
TARGET9 = firstfmt
TARGET10 = format
TARGET11 = getfilnam
TARGET12 = inpdat
TARGET13 = matrix
TARGET14 = solvequad
TARGET15 = strings
TARGET16 = sum10
TARGET17 = sumn
TARGET18 = sums
TARGET19 = sunearth
TARGET20 = surea
TARGET21 = survrec
TARGET22 = test23
TARGET23 = trunc
TARGET24 = types
TARGET25 = while
TARGETS = while types trunc test23 survrec surea sunearth sums sumn sum10 strings solvequad matrix inpdat getfilnam format firstfmt first fileorig fileoo fileo fileir fileio filei energies circle
all: $(TARGETS)
.PHONY: clean
obj/$(TARGET0)$(OEXE): src/circle.f
	$(FC) -c   $< -o obj/circle$(OEXE) $(FFLAGS)
$(TARGET0): obj/circle$(OEXE)
	$(FC) -o circle $< $(LDFLAGS)
obj/$(TARGET1)$(OEXE): src/energies.f
	$(FC) -c   $< -o obj/energies$(OEXE) $(FFLAGS)
$(TARGET1): obj/energies$(OEXE)
	$(FC) -o energies $< $(LDFLAGS)
obj/$(TARGET2)$(OEXE): src/filei.f
	$(FC) -c   $< -o obj/filei$(OEXE) $(FFLAGS)
$(TARGET2): obj/filei$(OEXE)
	$(FC) -o filei $< $(LDFLAGS)
obj/$(TARGET3)$(OEXE): src/fileio.f
	$(FC) -c   $< -o obj/fileio$(OEXE) $(FFLAGS)
$(TARGET3): obj/fileio$(OEXE)
	$(FC) -o fileio $< $(LDFLAGS)
obj/$(TARGET4)$(OEXE): src/fileir.f
	$(FC) -c   $< -o obj/fileir$(OEXE) $(FFLAGS)
$(TARGET4): obj/fileir$(OEXE)
	$(FC) -o fileir $< $(LDFLAGS)
obj/$(TARGET5)$(OEXE): src/fileo.f
	$(FC) -c   $< -o obj/fileo$(OEXE) $(FFLAGS)
$(TARGET5): obj/fileo$(OEXE)
	$(FC) -o fileo $< $(LDFLAGS)
obj/$(TARGET6)$(OEXE): src/fileoo.f
	$(FC) -c   $< -o obj/fileoo$(OEXE) $(FFLAGS)
$(TARGET6): obj/fileoo$(OEXE)
	$(FC) -o fileoo $< $(LDFLAGS)
obj/$(TARGET7)$(OEXE): src/fileorig.f
	$(FC) -c   $< -o obj/fileorig$(OEXE) $(FFLAGS)
$(TARGET7): obj/fileorig$(OEXE)
	$(FC) -o fileorig $< $(LDFLAGS)
obj/$(TARGET8)$(OEXE): src/first.f
	$(FC) -c   $< -o obj/first$(OEXE) $(FFLAGS)
$(TARGET8): obj/first$(OEXE)
	$(FC) -o first $< $(LDFLAGS)
obj/$(TARGET9)$(OEXE): src/firstfmt.f
	$(FC) -c   $< -o obj/firstfmt$(OEXE) $(FFLAGS)
$(TARGET9): obj/firstfmt$(OEXE)
	$(FC) -o firstfmt $< $(LDFLAGS)
obj/$(TARGET10)$(OEXE): src/format.f
	$(FC) -c   $< -o obj/format$(OEXE) $(FFLAGS)
$(TARGET10): obj/format$(OEXE)
	$(FC) -o format $< $(LDFLAGS)
obj/$(TARGET11)$(OEXE): src/getfilnam.f
	$(FC) -c   $< -o obj/getfilnam$(OEXE) $(FFLAGS)
$(TARGET11): obj/getfilnam$(OEXE)
	$(FC) -o getfilnam $< $(LDFLAGS)
obj/$(TARGET12)$(OEXE): src/inpdat.f
	$(FC) -c   $< -o obj/inpdat$(OEXE) $(FFLAGS)
$(TARGET12): obj/inpdat$(OEXE)
	$(FC) -o inpdat $< $(LDFLAGS)
obj/$(TARGET13)$(OEXE): src/matrix.f
	$(FC) -c   $< -o obj/matrix$(OEXE) $(FFLAGS)
$(TARGET13): obj/matrix$(OEXE)
	$(FC) -o matrix $< $(LDFLAGS)
obj/$(TARGET14)$(OEXE): src/solvequad.f
	$(FC) -c   $< -o obj/solvequad$(OEXE) $(FFLAGS)
$(TARGET14): obj/solvequad$(OEXE)
	$(FC) -o solvequad $< $(LDFLAGS)
obj/$(TARGET15)$(OEXE): src/strings.f
	$(FC) -c   $< -o obj/strings$(OEXE) $(FFLAGS)
$(TARGET15): obj/strings$(OEXE)
	$(FC) -o strings $< $(LDFLAGS)
obj/$(TARGET16)$(OEXE): src/sum10.f
	$(FC) -c   $< -o obj/sum10$(OEXE) $(FFLAGS)
$(TARGET16): obj/sum10$(OEXE)
	$(FC) -o sum10 $< $(LDFLAGS)
obj/$(TARGET17)$(OEXE): src/sumn.f
	$(FC) -c   $< -o obj/sumn$(OEXE) $(FFLAGS)
$(TARGET17): obj/sumn$(OEXE)
	$(FC) -o sumn $< $(LDFLAGS)
obj/$(TARGET18)$(OEXE): src/sums.f
	$(FC) -c   $< -o obj/sums$(OEXE) $(FFLAGS)
$(TARGET18): obj/sums$(OEXE)
	$(FC) -o sums $< $(LDFLAGS)
obj/$(TARGET19)$(OEXE): src/sunearth.f
	$(FC) -c   $< -o obj/sunearth$(OEXE) $(FFLAGS)
$(TARGET19): obj/sunearth$(OEXE)
	$(FC) -o sunearth $< $(LDFLAGS)
obj/$(TARGET20)$(OEXE): src/surea.f
	$(FC) -c   $< -o obj/surea$(OEXE) $(FFLAGS)
$(TARGET20): obj/surea$(OEXE)
	$(FC) -o surea $< $(LDFLAGS)
obj/$(TARGET21)$(OEXE): src/survrec.f
	$(FC) -c   $< -o obj/survrec$(OEXE) $(FFLAGS)
$(TARGET21): obj/survrec$(OEXE)
	$(FC) -o survrec $< $(LDFLAGS)
obj/$(TARGET22)$(OEXE): src/test23.f
	$(FC) -c   $< -o obj/test23$(OEXE) $(FFLAGS)
$(TARGET22): obj/test23$(OEXE)
	$(FC) -o test23 $< $(LDFLAGS)
obj/$(TARGET23)$(OEXE): src/trunc.f
	$(FC) -c   $< -o obj/trunc$(OEXE) $(FFLAGS)
$(TARGET23): obj/trunc$(OEXE)
	$(FC) -o trunc $< $(LDFLAGS)
obj/$(TARGET24)$(OEXE): src/types.f
	$(FC) -c   $< -o obj/types$(OEXE) $(FFLAGS)
$(TARGET24): obj/types$(OEXE)
	$(FC) -o types $< $(LDFLAGS)
obj/$(TARGET25)$(OEXE): src/while.f
	$(FC) -c   $< -o obj/while$(OEXE) $(FFLAGS)
$(TARGET25): obj/while$(OEXE)
	$(FC) -o while $< $(LDFLAGS)
TARGET26 = stdio
$(SRCDIR)stdio.f: $(SRCDIR)stdio0.txt $(SRCDIR)stdio1.txt
	 cat $(SRCDIR)stdio0.txt $(SRCDIR)stdio.txt >$(SRCDIR)stdio.f
$(OBJDIR)$(TARGET26)$(OEXE): $(SRCDIR)$(TARGET26).f
	$(FC) $(FFLAGS) $< $(FDFLAGS) $(OBJDIR)$(TARGET26)$(OEXE) 
$(TARGET26)$(EEXE): $(OBJDIR)$(TARGET26)$(OEXE)
	$(FL) $< $(FDFLAGS) $(TARGET26)$(EEXE) $(LDFLAGS)
	$(RM) $(SRCDIR)$(TARGET26).f
install: all
	mv $(TARGETS) $(BINDIR)
clean:
	$(RM) $(OBJ) $(TARGETS) stdio *.dat *.csv fort.* *.log
distclean: clean
	$(RM) $(BINDIR)* Makefile*
