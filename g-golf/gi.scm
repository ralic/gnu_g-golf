;; -*- mode: scheme; coding: utf-8 -*-

;;;;
;;;; Copyright (C) 2016
;;;; Free Software Foundation, Inc.

;;;; This file is part of GNU G-Golf

;;;; GNU G-Golf is free software; you can redistribute it and/or modify
;;;; it under the terms of the GNU Lesser General Public License as
;;;; published by the Free Software Foundation; either version 3 of the
;;;; License, or (at your option) any later version.

;;;; GNU G-Golf is distributed in the hope that it will be useful, but
;;;; WITHOUT ANY WARRANTY; without even the implied warranty of
;;;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;;;; Lesser General Public License for more details.

;;;; You should have received a copy of the GNU Lesser General Public
;;;; License along with GNU G-Golf.  If not, see
;;;; <https://www.gnu.org/licenses/lgpl.html>.
;;;;

;;; Commentary:

;;; Code:


;; useless in guile-2.2, we have to declare #:duplicates in each module
;; we keep it in case things change in the future, who knows...
#;(eval-when (expand load eval)
  (use-modules (oop goops))
  (default-duplicate-binding-handler
    '(merge-generics replace warn-override-core warn last)))


(define-module (g-golf gi)
  #:use-module (oop goops)
  #:use-module (ice-9 match)
  #:use-module (ice-9 binary-ports)
  #:use-module (rnrs bytevectors)
  #:use-module (rnrs arithmetic bitwise)
  #:use-module (system foreign)
  #:use-module (srfi srfi-1)
  #:use-module (srfi srfi-60)
  #:use-module (g-golf support modules)
  #:use-module (g-golf support goops)
  #:use-module (g-golf support g-export)
  #:use-module (g-golf support utils)
  #:use-module (g-golf support enum)
  #:use-module (g-golf support push)
  #:use-module (g-golf support keyword)
  #:use-module (g-golf init)
  #:use-module (g-golf glib mem-alloc)
  #:use-module (g-golf gobject type-info)
  #:use-module (g-golf gobject enum-flags)
  #:use-module (g-golf gobject types)
  #:use-module (g-golf gobject generic-values)
  #:use-module (g-golf gobject gvalue)
  #:use-module (g-golf gobject gobject)
  #:use-module (g-golf gi utils)
  #:use-module (g-golf gi types)
  #:use-module (g-golf gi repository)
  #:use-module (g-golf gi base-info)
  #:use-module (g-golf gi callable-info)
  #:use-module (g-golf gi registered-type-info)
  #:use-module (g-golf gi enum-info)
  #:use-module (g-golf gi object-info)
  #:use-module (g-golf gi arg-info)
  #:use-module (g-golf gi property-info)
  #:use-module (g-golf gi type-info)

  #:duplicates (merge-generics
		replace
		warn-override-core
		warn
		last))

(eval-when (expand load eval)
  (re-export-public-interface (oop goops)
			      (ice-9 match)
			      (ice-9 binary-ports)
			      (rnrs bytevectors)
			      (rnrs arithmetic bitwise)
			      (system foreign)
			      (srfi srfi-1)
			      (srfi srfi-60)
			      (g-golf support goops)
			      (g-golf support g-export)
			      (g-golf support utils)
			      (g-golf support enum)
			      (g-golf support push)
			      (g-golf support keyword)
			      (g-golf init)
			      (g-golf glib mem-alloc)
			      (g-golf gobject type-info)
			      (g-golf gobject enum-flags)
			      (g-golf gobject types)
			      (g-golf gobject generic-values)
			      (g-golf gobject gvalue)
			      (g-golf gobject gobject)
			      (g-golf gi utils)
			      (g-golf gi types)
			      (g-golf gi repository)
  			      (g-golf gi base-info)
			      (g-golf gi callable-info)
			      (g-golf gi registered-type-info)
			      (g-golf gi enum-info)
			      (g-golf gi object-info)
			      (g-golf gi arg-info)
			      (g-golf gi property-info)
			      (g-golf gi type-info)
			      (g-golf gi typelib)))
