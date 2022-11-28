use v6;

unit module Math::Libgsl::Elementary:ver<0.0.3>:auth<zef:FRITH>;

use Math::Libgsl::Raw::Elementary :ALL;

# Elementary functions
sub log1p(Num() $x --> Num) is export(:elem) { gsl_log1p($x) }
sub expm1(Num() $x --> Num) is export(:elem) { gsl_expm1($x) }
sub hypot(Num() $x, Num() $y --> Num) is export(:elem) { gsl_hypot($x, $y) }
sub hypot3(Num() $x, Num() $y, Num() $z --> Num) is export(:elem) { gsl_hypot3($x, $y, $z) }
sub ldexp(Num() $x, Int $e --> Num) is export(:elem) { gsl_ldexp($x, $e) }
sub frexp(Num() $x --> List) is export(:elem) { my int32 $e = 0; my $f = gsl_frexp($x, $e); $f, $e }
# Small integer powers
sub int-pow(Num() $x, Int $e --> Num) is export(:smallint) { gsl_pow_int($x, $e) }
sub uint-pow(Num() $x, UInt $e --> Num) is export(:smallint) { gsl_pow_uint($x, $e) }
sub pow2(Num() $x --> Num) is export(:smallint) { gsl_pow_2($x) }
sub pow3(Num() $x --> Num) is export(:smallint) { gsl_pow_3($x) }
sub pow4(Num() $x --> Num) is export(:smallint) { gsl_pow_4($x) }
sub pow5(Num() $x --> Num) is export(:smallint) { gsl_pow_5($x) }
sub pow6(Num() $x --> Num) is export(:smallint) { gsl_pow_6($x) }
sub pow7(Num() $x --> Num) is export(:smallint) { gsl_pow_7($x) }
sub pow8(Num() $x --> Num) is export(:smallint) { gsl_pow_8($x) }
sub pow9(Num() $x --> Num) is export(:smallint) { gsl_pow_9($x) }

=begin pod

=head1 NAME

Math::Libgsl::Elementary - An interface to libgsl, the Gnu Scientific Library - elementary functions.

=head1 SYNOPSIS

=begin code :lang<raku>

use Math::Libgsl::Elementary :ALL;

=end code

=head1 DESCRIPTION

Math::Libgsl::Elementary provides an interface to the Elementary Functions in the libgsl, the GNU Scientific Library.

This package provides both the low-level interface to the C library (Raw) and a more comfortable interface layer for the Raku programmer.

Math::Libgsl::Elementary makes these tags available:

=item :elem
=item :smallint

=head3 sub log1p(Num() $x --> Num) is export(:elem)

Computes the value of log(1 + x).

=head3 sub expm1(Num() $x --> Num) is export(:elem)

Computes the value of exp(x) - 1.

=head3 sub hypot(Num() $x, Num() $y --> Num) is export(:elem)

Computes the value of sqrt(x² + y²).

=head3 sub hypot3(Num() $x, Num() $y, Num() $z --> Num) is export(:elem)

Computes the value of sqrt(x² + y² + z²).

=head3 sub ldexp(Num() $x, Int $e --> Num) is export(:elem)

Computes the value of x * 2ᵉ.

=head3 sub frexp(Num() $x --> List) is export(:elem)

Computes the value of f such that x = f * 2ᵉ.
It returns a list of two values: f and e.

=head3 sub int-pow(Num() $x, Int $e --> Num) is export(:smallint)

Computes the value of xᵉ with e ∈ ℤ.

=head3 sub uint-pow(Num() $x, UInt $e --> Num) is export(:smallint)

Computes the value of xᵉ with e ∈ ℕ.

=head3 sub pow2(Num() $x --> Num) is export(:smallint)

Computes the value of x².

=head3 sub pow3(Num() $x --> Num) is export(:smallint)

Computes the value of x³.

=head3 sub pow4(Num() $x --> Num) is export(:smallint)

Computes the value of x⁴.

=head3 sub pow5(Num() $x --> Num) is export(:smallint)

Computes the value of x⁵.

=head3 sub pow6(Num() $x --> Num) is export(:smallint)

Computes the value of x⁶.

=head3 sub pow7(Num() $x --> Num) is export(:smallint)

Computes the value of x⁷.

=head3 sub pow8(Num() $x --> Num) is export(:smallint)

Computes the value of x⁸.

=head3 sub pow9(Num() $x --> Num) is export(:smallint)

Computes the value of x⁹.

=head1 C Library Documentation

For more details on libgsl see L<https://www.gnu.org/software/gsl/>.
The excellent C Library manual is available here L<https://www.gnu.org/software/gsl/doc/html/index.html>, or here L<https://www.gnu.org/software/gsl/doc/latex/gsl-ref.pdf> in PDF format.

=head1 Prerequisites

This module requires the libgsl library to be installed. Please follow the instructions below based on your platform:

=head2 Debian Linux and Ubuntu 20.04

=begin code
sudo apt install libgsl23 libgsl-dev libgslcblas0
=end code

That command will install libgslcblas0 as well, since it's used by the GSL.

=head2 Ubuntu 18.04

libgsl23 and libgslcblas0 have a missing symbol on Ubuntu 18.04.
I solved the issue installing the Debian Buster version of those three libraries:

=item L<http://http.us.debian.org/debian/pool/main/g/gsl/libgslcblas0_2.5+dfsg-6_amd64.deb>
=item L<http://http.us.debian.org/debian/pool/main/g/gsl/libgsl23_2.5+dfsg-6_amd64.deb>
=item L<http://http.us.debian.org/debian/pool/main/g/gsl/libgsl-dev_2.5+dfsg-6_amd64.deb>

=head1 Installation

To install it using zef (a module management tool):

=begin code
$ zef install Math::Libgsl::Elementary
=end code

=head1 AUTHOR

Fernando Santagata <nando.santagata@gmail.com>

=head1 COPYRIGHT AND LICENSE

Copyright 2020 Fernando Santagata

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

=end pod
