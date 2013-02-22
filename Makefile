#
#  $Id: Makefile,v f21c0c1750c1 2011/09/26 16:47:38 fdelahoyde $
#
CFLAGS:= -O
CINCLUDES:= -I.
Library:= libgswteos-10.so
Program:= gsw_check_functions
Format:= gsw_format
$(Format)_SRCS:= gsw_format.c
$(Program)_SRCS:= gsw_check_functions.c \
    gsw_oceanographic_toolbox.c \
    gsw_saar.c \
    gsw_saar_data.c
$(Library)_SRCS:=    gsw_oceanographic_toolbox.c \
    gsw_saar.c \
	gsw_saar_data.c
$(Library)_OBJS:=    gsw_oceanographic_toolbox.o \
    gsw_saar.o \
	gsw_saar_data.o


all: $(Program) $(Library)

gsw_data_v3_0.dat: gsw_data_v3_0.dat.gz
	cp $< tmp
	gunzip $<
	mv tmp $<

$(Format): $($(Format)_SRCS)
	gcc -o $@ $<

gsw_saar_data.c: gsw_data_v3_0.dat gsw_format
	gcc -o gsw_format gsw_format.c
	./gsw_format > gsw_saar_data.c

$(Program): $($(Program)_SRCS)
	gcc $(CFLAGS) $(CINCLUDES) -o $(Program) $($(Program)_SRCS) -lm

library: $(Library)

$(Library): $($(Library)_SRCS)
	gcc -fPIC -c $(CFLAGS) $(CINCLUDES) $($(Library)_SRCS)
	gcc -shared -o $(Library) $($(Library)_OBJS) -lm

clean:
	rm -f $(Program) $(Library) $($(Library)_OBJS) $(Format)
	rm -rf *.dat
    
