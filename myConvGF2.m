function x = myConvGF2(u, v)
% Not so efficiently, using x = mod(conv(u,v), 2) instead!
% Multiply polynomial u by v and get the product
% Polynoimials are all over GF(2).
%
% Input:
%   a: Polynomial coefficients in order of ascending power.
%      The highest(rightest) position is 1. Row vector.
%   b: Polynomial coefficients in order of ascending power.
%      The highest(rightest) position is 1. Row vector
%
% Ouput:
%   x: The product. Logical row vector.
%
% Complexity: O(n)


u = logical(u);
v = logical(v);
deg_u = length(u); % In fact, it is deg(u)-1
deg_v = length(v); % In fact, it is deg(v)-1
x = false(1, deg_u+deg_v-1);

for i = 1:deg_v
    if v(i)
        x(i:i+deg_u-1) = xor(x(i:i+deg_u-1), u);
    end
end
end