function r = myEuclideanGcdGF2(a, b)
% Find the greatest common divisor using Euclidean Algorithm
% Input:
%   a: polynomial coefficient in order of ascending power
%      the highest(rightest position is 1)
%   b: polynomial coefficient in order of ascending power
%      the highest(rightest position is 1)
% Ouput:
%   r: the greatest common divisor 
%      the highest(rightest position is 1)
%      polynomial coefficient in order of ascending power

a = logical(a);
b = logical(b);
% continue with deg(a) > deg(b) otherwise exchange a & b
deg_a = length(a); % in fact it is deg(a)-1
deg_b = length(b); % deg(b)-1
if deg_b > deg_a
    x = a;
    a = b;
    b = x;
end

% start recursive
while true
    a(end:end-deg_b)~=
    
end



end