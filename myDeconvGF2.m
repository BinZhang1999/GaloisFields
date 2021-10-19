function [q, r] = myDeconvGF2(u, v)
% Not so efficiently, using [q, r] = deconv(u,v) q = mod(q,2) instead!
% Devide polynomial u by v and get the quotient and residue.
% Polynoimials are all over GF(2).
%
% Input:
%   a: Polynomial coefficients in order of ascending power.
%      The highest(rightest) position is 1. Row vector.
%   b: Polynomial coefficients in order of ascending power.
%      The highest(rightest) position is 1. Row vector
%
% Ouput:
%   q: The quotient. Logical row vector.
%   r: The residue. Logical row vector.
%
% Complexity: O(n)

u = logical(u);
v = logical(v);

deg_u = length(u); % In fact, it is deg(u)-1
deg_v = length(v); % In fact, it is deg(v)-1

if deg_v > deg_u
    q = false; r = u; return; 
end

q = false(1, deg_u-deg_v+1);
for i = deg_u:-1:deg_v
    if u(i) 
        q(i-deg_v+1) = true;
        x = xor(u(i-deg_v+1:i), v);
        u = [u(1:i-deg_v) x]; % should not find the highest position.
        % put this stuff into the 'for u=' will save the complexity.
    end
end

r = u(1:deg_v-1);
idx = find(r);
if isempty(idx)
    r = false;
    return;
end
r = r(1:idx(end));
end