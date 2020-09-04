[![Build Status](https://travis-ci.org/frithnanth/raku-Math-Libgsl-Elementary.svg?branch=master)](https://travis-ci.org/frithnanth/raku-Math-Libgsl-Elementary)

NAME
====

Math::Libgsl::Elementary - An interface to libgsl, the Gnu Scientific Library - elementary functions.

SYNOPSIS
========

```perl6
use Math::Libgsl::Elementary :ALL;
```

DESCRIPTION
===========

Math::Libgsl::Elementary provides an interface to the Elementary Functions in the libgsl, the GNU Scientific Library.

This package provides both the low-level interface to the C library (Raw) and a more comfortable interface layer for the Raku programmer.

Math::Libgsl::Elementary makes these tags available:

  * :elem

  * :smallint

### sub log1p(Num() $x --> Num) is export(:elem)

Computes the value of log(1 + x).

### sub expm1(Num() $x --> Num) is export(:elem)

Computes the value of exp(x) - 1.

### sub hypot(Num() $x, Num() $y --> Num) is export(:elem)

Computes the value of sqrt(x² + y²).

### sub hypot3(Num() $x, Num() $y, Num() $z --> Num) is export(:elem)

Computes the value of sqrt(x² + y² + z²).

### sub ldexp(Num() $x, Int $e --> Num) is export(:elem)

Computes the value of x * 2ᵉ.

### sub frexp(Num() $x --> List) is export(:elem)

Computes the value of f such that x = f * 2ᵉ. It returns a list of two values: f and e.

### sub int-pow(Num() $x, Int $e --> Num) is export(:smallint)

Computes the value of xᵉ with e ∈ ℤ.

### sub uint-pow(Num() $x, UInt $e --> Num) is export(:smallint)

Computes the value of xᵉ with e ∈ ℕ.

### sub pow2(Num() $x --> Num) is export(:smallint)

Computes the value of x².

### sub pow3(Num() $x --> Num) is export(:smallint)

Computes the value of x³.

### sub pow4(Num() $x --> Num) is export(:smallint)

Computes the value of x⁴.

### sub pow5(Num() $x --> Num) is export(:smallint)

Computes the value of x⁵.

### sub pow6(Num() $x --> Num) is export(:smallint)

Computes the value of x⁶.

### sub pow7(Num() $x --> Num) is export(:smallint)

Computes the value of x⁷.

### sub pow8(Num() $x --> Num) is export(:smallint)

Computes the value of x⁸.

### sub pow9(Num() $x --> Num) is export(:smallint)

Computes the value of x⁹.

C Library Documentation
=======================

For more details on libgsl see [https://www.gnu.org/software/gsl/](https://www.gnu.org/software/gsl/). The excellent C Library manual is available here [https://www.gnu.org/software/gsl/doc/html/index.html](https://www.gnu.org/software/gsl/doc/html/index.html), or here [https://www.gnu.org/software/gsl/doc/latex/gsl-ref.pdf](https://www.gnu.org/software/gsl/doc/latex/gsl-ref.pdf) in PDF format.

Prerequisites
=============

This module requires the libgsl library to be installed. Please follow the instructions below based on your platform:

Debian Linux and Ubuntu 20.04
-----------------------------

    sudo apt install libgsl23 libgsl-dev libgslcblas0

That command will install libgslcblas0 as well, since it's used by the GSL.

Ubuntu 18.04
------------

libgsl23 and libgslcblas0 have a missing symbol on Ubuntu 18.04. I solved the issue installing the Debian Buster version of those three libraries:

  * [http://http.us.debian.org/debian/pool/main/g/gsl/libgslcblas0_2.5+dfsg-6_amd64.deb](http://http.us.debian.org/debian/pool/main/g/gsl/libgslcblas0_2.5+dfsg-6_amd64.deb)

  * [http://http.us.debian.org/debian/pool/main/g/gsl/libgsl23_2.5+dfsg-6_amd64.deb](http://http.us.debian.org/debian/pool/main/g/gsl/libgsl23_2.5+dfsg-6_amd64.deb)

  * [http://http.us.debian.org/debian/pool/main/g/gsl/libgsl-dev_2.5+dfsg-6_amd64.deb](http://http.us.debian.org/debian/pool/main/g/gsl/libgsl-dev_2.5+dfsg-6_amd64.deb)

Installation
============

To install it using zef (a module management tool):

    $ zef install Math::Libgsl::Elementary

AUTHOR
======

Fernando Santagata <nando.santagata@gmail.com>

COPYRIGHT AND LICENSE
=====================

Copyright 2020 Fernando Santagata

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

