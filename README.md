#TEOS-10 V3.0 GSW Oceanographic Toolbox in C

This is a translation of the original Fortran-90 source
code into C. You should download the documentation from http://teos-10.org.
The functions gsw_saar and gsw_delta_sa_ref
have been modified from the original to not use an external
data file for global absolute salinity anomaly and absolute
salinity anomaly ratio data. The data are instead incorporated
into static tables that are used directly.

## Manifest

        README                                                          -- this file.
        gsw_check_functions.c                                           -- C implementation of the check functions
        gsw_data_v3_0.dat.gz                                            -- global absolute salinity anomaly data
        gsw_format.c                                                    -- program to create gsw_saar_data.c from
                                                                           gsw_data_v3_0.dat
        gsw_oceanographic_toolbox.c                                     -- The C GSW library less gsw_saar
        gsw_saar.c                                                      -- gsw_saar and gsw_delta_sa_ref (modified)
        gsw_saar_data.c                                                 -- static global absolute salinity anomaly data
                                                                           used by gsw_saar.c and created by gsw_format
        gswteos-10.h                                                    -- GSW function prototypes
        Makefile                                                        -- basic make file to build gsw_check_functions
                                                                       and libgswteos-10.so

You'll probably want to build gsw_oceanographic_toolbox.c, and gsw_saar.c
into a library. "make library" will attempt to build a shared library for
gcc/GNU Linux platforms.

C programs using the GSW Oceanographic Toolbox should include the
supplied header file:

        #include <gswteos-10.h>

## Change Log

        2013-04-14: Forked by Luke Campbell, Added automake build
        2012-10-07:	gsw-3.0.1 New gsw_check_functions.c based on revised f90.
        2011-09-23:	gsw-3.0 Initial creation.

## Installation

        bash ./autogen.sh
        ./configure --prefix=/usr/local/libgswteos-10
        make
        sudo make install
        
## Linking

        sudo ln -s /usr/local/libgswteos-10/lib/libgswteos-10.la /usr/local/lib/
        sudo ln -s /usr/local/libgswteos-10/lib/libgswteos-10.so.3 /usr/local/lib/
        sudo ln -s /usr/local/libgswteos-10/lib/libgswteos-10.so.3.0.0 /usr/local/lib/
        sudo ln -s /usr/local/libgswteos-10/lib/libgswteos-10.so /usr/local/lib/
        sudo ln -s /usr/local/libgswteos-10/include/gswteos-10.h /usr/local/include/

## Contacts

        Luke Campbell <lcampbell at asascience dot com>
        Software Engineer
        Ocean Observatories Initiative, Cyber Infrastructure
        Data Management
        


        Frank Delahoyde <fdelahoyde at ucsd dot edu>
        Shipboard Technical Support, Computing Resources <sts-cr@ucsd.edu>
        Scripps Institution of Oceanography
        Nimitz Marine Facility, Point Loma
        San Diego, Ca. 92106-3505

