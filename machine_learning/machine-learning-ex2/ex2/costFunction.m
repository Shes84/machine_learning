function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 

grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
h = sigmoid(X * theta);
h1 = log(h);
h2 = log(1-h);
cost1 = -(y' * h1 + h2' * (1-y))/m
%theta(1) = 0;
%thetaf = theta' * theta;
%theta_item = lambda / (2 * m) * thetaf
J = cost1 
grad = ((h - y)' * X) / m 






% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%








% =============================================================

end
