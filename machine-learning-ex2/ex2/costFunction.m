function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%

disp('size of theta = ');
size(theta)
disp('size of X = ');
size(X)

h_theta = sigmoid(X*theta);       

disp('size of h_theta = ');
size(h_theta)

J = sum(-y' * log(h_theta) - (1 - y')*log(1 - h_theta)) / m;
disp('size of J = ');
size(J)

grad = X' * (h_theta - y)/m;
disp('size of grad = ');
size(grad)



% =============================================================

end