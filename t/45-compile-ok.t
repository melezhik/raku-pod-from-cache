use Test;
use File::Directory::Tree;
use Pod::From::Cache;

constant CACHE = 't/cache';
constant DOC = 't/tmp';

my Pod::From::Cache $m;

plan 1;

lives-ok { $m .= new(:doc-source(DOC), :cache-path(CACHE)) }, 'No compile errors';

rmtree DOC;
rmtree CACHE;

done-testing;
