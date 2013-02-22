#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ(2.61)
AC_INIT(TEOS-10, 3.0, BUG-REPORT-ADDRESS)
LT_INIT([disable-static])
AM_INIT_AUTOMAKE(TEOS-10, 3.0)
AC_OUTPUT(Makefile src/Makefile)
AC_CONFIG_SRCDIR([include/gswteos-10.h])
AC_CONFIG_HEADER([config.h])


# Checks for programs.
AC_PROG_CC

# Checks for libraries.

# Checks for header files.
AC_HEADER_STDC
AC_CHECK_HEADERS([stdlib.h string.h])

# Checks for typedefs, structures, and compiler characteristics.

# Checks for library functions.
AC_FUNC_MALLOC
AC_FUNC_STRTOD
AC_CHECK_FUNCS([floor memmove sqrt])

AC_CONFIG_MACRO_DIR([m4])
AC_OUTPUT
