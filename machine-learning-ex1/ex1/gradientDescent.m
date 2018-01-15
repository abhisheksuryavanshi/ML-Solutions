function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters



    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %







    % ============================================================

    #y1 = -1*y;
    #x = X(:,2);
    #x=theta(2,1)*x;
    #x=x.+theta(1,1);
    #tbs=x+y1;
    
    #tbs1=tbs;
    #tbs2=tbs;
    
    #d=ones(m,1);
    #d=d';
    #an=d*tbs1;
    #an=alpha*(an/m);
    #an=an*-1;
    #theta(1,1) = theta(1,1)+an;
    
    #an=tbs2'*x;
    #an=alpha*an/m;
    #an=an*-1;
    #theta(2,1) = theta(2,1)+an;
    
    g = 0;
    k = 0;
    for i = 1 : m
        k = k + theta(1) + theta(2) * X(i,2) - y(i);
        g = g + (theta(1) + theta(2) * X(i,2) - y(i)) * X(i, 2);
    end
    theta(1) =theta(1) - alpha /m * k;
    theta(2) = theta(2) - alpha /m * g;
    
    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);
end

end
