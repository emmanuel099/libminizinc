% RUNS ON mzn20_fd
% RUNS ON mzn-fzn_fd
% Test product/1 for integers with multi-dimensional arrays.

int: a = product([|2, 2 | 2, 2|]);

array[1..2, 1..2] of var 1..2: vs;
var int: b = product(vs);

solve satisfy;

output [
   "% a = ", show(a), ";\n",
   "b = ", show(b), ";\n"
];
