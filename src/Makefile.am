ACLOCAL_AMFLAGS = -I m4
AM_CFLAGS = -Wall -O2 -I../include
AM_LDFLAGS = -lm

lib_LTLIBRARIES=libgswteos-10.la
libgswteos_10_la_SOURCES= gsw_oceanographic_toolbox.c gsw_saar.c gsw_saar_data.c
libgswteos_10_la_LDFLAGS= -version-info 3:0
libgswteos_10_la_CFLAGS=$(AM_CFLAGS)

bin_PROGRAMS = gsw_check_functions

gsw_check_functions_SOURCES = gsw_check_functions.c 
gsw_check_functions_DEPENDENCIES = libgswteos-10.la
gsw_check_functions_LDFLAGS=-lgswteos-10 -lm

include_HEADERS=../include/gswteos-10.h
