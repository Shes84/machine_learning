function [J, grad] = lrCostFunction(theta, X, y, lambda)
%LRCOSTFUNCTION Compute cost and gradient for logistic regression with 
%regularization
%   J = LRCOSTFUNCTION(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 

grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
%z1 = X * theta 
%h = sigmoid(z1)
%h1 = log(h)
%cost1 = y' * h1
%h2 = log(1-h)
%cost2 = h2' * (1-y)
%J = -(cost1 + cost2) / m + lambda*(theta' * theta)/ (2 * m)

%grad = (X' * (h-y)) / m + lambda / m * theta

J = (1/m) * (sum(-y .* log(sigmoid(theta'*X')')) - sum((1 .- y).*log(1 .- sigmoid(theta'*X')'))) + (lambda / (2*m)) * sum(theta(2:end) .^ 2);

grad = (1/m) .* (X' * (sigmoid(theta'*X')'-y)) + (lambda/m).*theta;
grad(1) = grad(1) - (lambda/m)*theta(1);

grad = grad(:);




% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Hint: The computation of the cost function and gradients can be
%       efficiently vectorized. For example, consider the computation
%
%           sigmoid(X * theta)
%
%       Each row of the resulting matrix will contain the value of the
%       prediction for that example. You can make use of this to vectorize
%       the cost function and gradient computations. 
%
% Hint: When computing the gradient of the regularized cost function, 
%       there're many possible vectorized solutions, but one solution
%       looks like:
%           grad = (unregularized gradient for logistic regression)
%           temp = theta; 
%           temp(1) = 0;   % because we don't add anything for j = 0  
%           grad = grad + YOUR_CODE_HERE (using the temp variable)
%










% =============================================================

grad = grad(:);

end
