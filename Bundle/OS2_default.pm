package Bundle::OS2_default;

$VERSION = '1.06';

1;

=head1 NAME

Bundle::OS2_default - Modules to install last for OS/2 binary distribution

=head1 SYNOPSIS

  perl -MCPAN -e "install Bundle::OS2_default"

  perl_ -MCPAN -e "force 'install', Bundle::OS2_default1"
  perl_ -MCPAN -e "force 'install', Bundle::OS2_default2"
  perl_ -MCPAN -e "force 'install', Bundle::OS2_default3"
  ...

=head1 CONTENTS

Bundle::OS2_default1_2

Bundle::OS2_default3

Bundle::OS2_default4

Bundle::OS2_default5

Bundle::OS2_default6

=head1 KNOWN PROBLEMS with version 5.7.3

All the mentioned patches are sent to the respected authors; see also the
subdirectory F<patches> of this distribution.  Build failures with XML
modules are not OS/2-specific, but specific to 5.7.3.

  Curses, FreezeThaw, URI, libwww, XML::Parser, XML::RSS, libxml manually
  installed.  Same for XML::DOM 1.37 (can't be tested, needs too much).

  After patching, minimal failures of the above.

  Term::ReadLine::Perl does not show the second line after "ex it".

  ----------------------------------------------------------------------------

  Fix Curses to use -lncurses_s
  Fix FreezeThaw to not expect +6 from Math::BigInt
  Strange binmode-ish output from Term::ReadLine

  URI 		fails - as usual - force install.
  FreezeThaw	- likewise
  libwww		- one test assumes floating point, now Time::local uses integer
                  - force install
  Curses		- requires a patch
  GD  fails - expect newer gd

  x) XML::Parser very buggy, but with a patch errors decrease to:

    Failed Test  Stat Wstat Total Fail  Failed  List of Failed
    --------------------------------------------------------------------------
    t/astress.t                25    1   4.00%  14
    t/encoding.t                4    2  50.00%  2 4
    t/parament.t               12    1   8.33%  7
    Failed 3/13 test scripts, 76.92% okay. 4/113 subtests failed, 96.46% okay.

  x) XML::Encoding dumps core (but test succeeds)

  x) Likewise for ReadLine::Perl (but test succeeds)

  x) XML::RSS can't be build by CPAN (no Makefile.PL), otherwise succeeds

  x) libxml fails stream.t:11, which checks UTF-ness;

  x) XML::DOM fails _jp_ tests

     Failed Test        Stat Wstat Total Fail  Failed  List of Failed
     ----------------------------------------------------------------
     t/dom_jp_attr.t     255 65280    23   21  91.30%  3-23
     t/dom_jp_cdata.t                  3    1  33.33%  3
     t/dom_jp_example.t                5    1  20.00%  4
     t/dom_jp_minus.t                  2    1  50.00%  2
     t/dom_jp_modify.t                16    1   6.25%  16
     t/dom_jp_print.t                  3    2  66.67%  2-3
     Failed 6/19 test scripts, 68.42% okay. 27/123 subtests failed, 78.05% okay.
     make: *** [test_dynamic] Error 9


  x) XML::Generator:

     Failed 2/2 test scripts, 0.00% okay. 2/83 subtests failed, 97.59% okay.
     Failed Test   Stat Wstat Total Fail  Failed  List of Failed
     -------------------------------------------------------------------------------
     t/DOM.t                     37    1   2.70%  28
     t/Generator.t               46    1   2.17%  26

  x) XML::Simple

     Failed 1/6 test scripts, 83.33% okay. 8/314 subtests failed, 97.45% okay.
     Failed Test    Stat Wstat Total Fail  Failed  List of Failed
     -------------------------------------------------------------------------------
     t/3_Storable.t  255 65280    19    8  42.11%  12-19

  x) XML::Grove

     Failed 1/2 test scripts, 50.00% okay. 2/10 subtests failed, 80.00% okay.
     Failed Test Stat Wstat Total Fail  Failed  List of Failed
     -------------------------------------------------------------------------------
     t/grove.t                  5    2  40.00%  3-4

  x) XML-XQL-0.61:

     t/union2............Can't coerce array into hash at blib/lib/XML/XQL/DOM.pm line 75.
     dubious
             Test returned status 255 (wstat 65280, 0xff00)
     DIED. FAILED test 3
             Failed 1/3 tests, 66.67% okay
     Failed 24/25 test scripts, 4.00% okay. 25/76 subtests failed, 67.11% okay.
     Failed Test        Stat Wstat Total Fail  Failed  List of Failed
     -------------------------------------------------------------------------------
     t/Strict.t          255 65280     3    1  33.33%  3
     t/attr.t            255 65280     3    1  33.33%  3
     t/comment.t         255 65280     3    1  33.33%  3
     t/cos.t             255 65280     3    1  33.33%  3
     t/date.t            255 65280     3    1  33.33%  3
     t/immed_precedes.t  255 65280     3    1  33.33%  3
     t/index.t           255 65280     3    1  33.33%  3
     t/index2.t          255 65280     3    1  33.33%  3
     t/map.t                           3    1  33.33%  3
     t/new.t             255 65280     3    1  33.33%  3
     t/once.t            255 65280     5    3  60.00%  3-5
     t/precedes.t        255 65280     3    1  33.33%  3
     t/recurse.t         255 65280     3    1  33.33%  3
     t/recurse2.t        255 65280     3    1  33.33%  3
     t/sin2.t                          3    1  33.33%  3
     t/subscript.t       255 65280     3    1  33.33%  3
     t/subscript2.t      255 65280     3    1  33.33%  3
     t/subst.t                         3    1  33.33%  3
     t/template.t        255 65280     2    0   0.00%  ??
     t/test.t            255 65280     3    1  33.33%  3
     t/test_DATA_CKL.t   255 65280     3    1  33.33%  3
     t/text.t            255 65280     3    1  33.33%  3
     t/union.t           255 65280     3    1  33.33%  3
     t/union2.t          255 65280     3    1  33.33%  3


=cut

