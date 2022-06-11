use strict;
use warnings;

# ファイル入出力

# ファイル読込
open(my $in, "<", "test.dat") or die("could not open file."); # 読込失敗時にはor dieが呼び出される
open(my $out, ">", "test.out") or die("could not open file."); # 読込失敗時にはor dieが呼び出される

# print ref $in; # refは型を確かめる演算子 $inはGLOB型

while (<$in>) {

    $_ =~ s/abc/ABC/;
    # ↑↓同じ意味
    s/abc/ABC/;

    if ($_ =~ /[a-z]/) { # if (/[a-z]/) でもいける
        print $out $_;
    }
}

close($in);
close($out);