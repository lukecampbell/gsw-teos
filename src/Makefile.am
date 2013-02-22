ACLOCAL_AMFLAGS = -I m4
AM_CFLAGS = -Wall -O2 -I../include
AM_LDFLAGS = -lm

lib_LTLIBRARIES=libteos.la
libteos_la_SOURCES= gsw_oceanographic_toolbox.c gsw_saar.c gsw_saar_data.c
libteos_la_LDFLAGS= -version-info 3:0
libteos_la_CFLAGS=$(AM_CFLAGS)

bin_PROGRAMS = gsw_check_functions

gsw_check_functions_SOURCES = gsw_check_functions.c 
gsw_check_functions_DEPENDENCIES = libteos.la
gsw_check_functions_LDFLAGS=-lteos
