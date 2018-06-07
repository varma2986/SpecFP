function [total_elements,accurate_elements,non_accurate_elements] = predict(theta, X, Y)
%PREDICT Predict whether the label is 0 or 1 using learned logistic 
%regression parameters theta
%   p = PREDICT(theta, X) computes the predictions for X using a 
%   threshold at 0.5 (i.e., if sigmoid(theta'*x) >= 0.5, predict 1)

m = size(X, 1); % Number of training examples

% You need to return the following variables correctly
p = zeros(m, 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned logistic regression parameters. 
%               You should set p to a vector of 0's and 1's
%

pred = X*theta;
total_elements = size(X,1);
accurate_elements = 0;
non_accurate_elements = 0;

for i=1:m
  %if (abs((abs(pred(i)) - abs(Y(i)))) < 0.1*abs(Y(i)))
  if(abs(pred(i) - Y(i)) < 0.1*abs(Y(i)))
    accurate_elements = accurate_elements + 1;
    fprintf('Index %d is accurate pred:%f Y:%f\n',i, pred(i), Y(i));
   else
    non_accurate_elements = non_accurate_elements + 1;
    fprintf('Index %d is not accurate pred:%f Y:%f  \n',i, pred(i), Y(i));
  end
end

% =========================================================================


end
