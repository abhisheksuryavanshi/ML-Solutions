function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.
y = -1*y;
X = X(:,2);
X=theta(2,1)*X;
X=X.+theta(1,1);
tbs=X+y;
tbs=tbs.^2;
d=ones(m,1);
d=d';
an=d*tbs;
an=an/(2*m);
J=an;

% =========================================================================

end
