function [X_norm,mean_X,std_X] = normalize(X)

n = size(X,2);
m = size(X,1);

mean_X = mean(X);
fprintf('Size of mean_X is %d \n',size(mean_X))

std_X = std(X);
fprintf('Size of std_X is %d \n',size(std_X))

%X_norm = X;

for i = 1:m
  for j = 1:n
    if(std_X(1,j) == 0)
      X_norm(i,j) = 1;
    else     
      X_norm(i,j) = (X(i,j) - mean_X(1,j))/std_X(1,j);
    end
  end
end
