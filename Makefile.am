
####
#### Copyright (C) 2016
#### Free Software Foundation, Inc.

#### This file is part of GNU G-Golf

#### GNU G-Golf is free software; you can redistribute it and/or modify
#### it under the terms of the GNU Lesser General Public License as
#### published by the Free Software Foundation; either version 3 of the
#### License, or (at your option) any later version.

#### GNU G-Golf is distributed in the hope that it will be useful, but
#### WITHOUT ANY WARRANTY; without even the implied warranty of
#### MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
#### Lesser General Public License for more details.

#### You should have received a copy of the GNU Lesser General Public
#### License along with GNU G-Golf.  If not, see
#### <https://www.gnu.org/licenses/lgpl.html>.
####


include $(top_srcdir)/am/guile.mk

moddir=$(GUILE_GLOBAL_SITE)
godir=$(GUILE_SITE_CCACHE)

pkgconfigdir=$(libdir)/pkgconfig
pkgconfig_DATA=meta/g-golf-1.0.pc

SOURCES = \
	g-golf/support/modules.scm		\
	g-golf/support/goops.scm		\
	g-golf/support/g-export.scm		\
	g-golf/support/utils.scm		\
	g-golf/support/enum.scm			\
	g-golf/support/push.scm			\
	g-golf/support/keyword.scm		\
	g-golf/support.scm			\
	g-golf/init.scm				\
	g-golf/glib/mem-alloc.scm		\
	g-golf/glib.scm				\
	g-golf/gobject/type-info.scm		\
	g-golf/gobject/enum-flags.scm		\
	g-golf/gobject/generic-values.scm	\
	g-golf/gobject/types.scm		\
	g-golf/gobject/gvalue.scm		\
	g-golf/gobject/gobject.scm		\
	g-golf/gobject.scm			\
	g-golf/gi/utils.scm			\
	g-golf/gi/types.scm			\
	g-golf/gi/repository.scm		\
	g-golf/gi/base-info.scm			\
	g-golf/gi/callable-info.scm		\
	g-golf/gi/registered-type-info.scm	\
	g-golf/gi/enum-info.scm			\
	g-golf/gi/object-info.scm		\
	g-golf/gi/arg-info.scm			\
	g-golf/gi/property-info.scm		\
	g-golf/gi/type-info.scm			\
	g-golf/gi/typelib.scm			\
	g-golf/gi.scm

# NOCOMP_SOURCES= \
# 	$(wildcard g-golf/glade/*)	\
# 	$(wildcard g-golf/icons/*)	\
# 	$(wildcard g-golf/latex/*)	\
# 	$(wildcard g-golf/gtkrc/*)	\
# 	$(shell find $(top_srcdir)/g-golf/pof -type f)

EXTRA_DIST = \
	AUTHORS				\
	ChangeLog			\
	COPYING				\
	INSTALL				\
	LICENSE				\
	NEWS				\
	README				\
	pre-inst-env.in			\
	meta/g-golf-1.0.pc.in		\
	$(wildcard am/*)		\
	$(wildcard m4/*)		\
	$(SOURCES)
# 	$(NOCOMP_SOURCES)

# bin_SCRIPTS = g-golf/g-golf

CLEANFILES = \
	meta/g-golf-1.0.pc		\
	$(GOBJECTS)
# 	$(bin_SCRIPTS)

ETAGS_ARGS = \
	$(SOURCES)
# g-golf

SUBDIRS = \
	test-suite			\
	doc

distclean-local:
	rm -f Makefile
	rm -f Makefile.in
	rm -f aclocal.m4
	rm -rf autom4te.cache
	rm -rf build-aux
	rm -f configure
	rm -f *~
	rm -f g-golf-*.tar.gz
	rm -f g-golf-*.tar.gz.sig
	rm -rf doc/g-golf
	rm -f doc/*.info
	rm -f doc/*.pdf
	rm -f doc/*~
	rm -f doc/*.aux doc/*.cp doc/*.cps doc/*.fn doc/*.fns doc/*.ky
	rm -f doc/*.log doc/*.pg doc/*.toc doc/*.tp doc/*.vr doc/*.vrs
	rm -f doc/Makefile
	rm -f doc/Makefile.in
	rm -f doc/stamp-vti
	rm -f g-golf/*~
	rm -f test-suite/Makefile
	rm -f test-suite/Makefile.in

# * .PHONY: gen-pof:

# Makefile.am ends here
