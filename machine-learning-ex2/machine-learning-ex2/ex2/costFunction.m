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
%size(theta)=3 1
%size(X)=100 3
%size(y)= 100 1
%size(z)=100 1=h=log1=log2
z=X*theta;
h=sigmoid(z);
log1=log(h);
log2=log(1-h);
y2=1-y;
a=y'*log1;
b=y2'*log2;
J=(1/m)*(a+b);
J=-J;

%Gradient:
diff=h-y;
grad=(1/m)*(X'*diff);








% =============================================================

end
