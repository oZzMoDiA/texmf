@default_files = ('*.dtx');

my $cwd = getcwd();
my $basedir = $cwd . '/../../..';

# add texmf dir to TEXINPUTS
$ENV{'TEXMFHOME'} = $basedir . ':' . `kpsewhich -var-value TEXMFHOME`;

# allow writing to directories that are not children of cwd
$ENV{'openout_any'} = 'a';

# set output directory to TDS conform path
$out_dir = $basedir . '/doc/ozzmodia';

# generate pdf by default
$pdf_mode = 1;

# the pdflatex command to use
$pdflatex = 'pdflatex -src-specials -file-line-error -interaction=nonstopmode %O %S';

# cleanup of generated files
$cleanup_mode = 2;
#$cleanup_includes_generated = 1;
