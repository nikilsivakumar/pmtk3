function [X,mu] = centerCols(X, mu)
% CENTER Make each column be zero mean
% We don't call it center so as not to mask the built-in 'center' function
% of Octave, whose second argument has a different meaning to ours

if nargin < 2 || isempty(mu)
  mu = mean(X); % across columns (if matrix)
end
[n p] = size(X);
%X = X - repmat(mu, n, 1);
X = bsxfun(@minus, X, mu);

end