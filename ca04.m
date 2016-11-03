% MACM316 - Computing Assignment 4
% Part 1, using f(x) = exp(x^2)
% Part 2, using f(x) = exp(x^(2*k))
% using the initial values [a0; b0; c0] = [-1; 1/2; 1]
% Plot the error VS iteration number
% comment on the observed accuracy, efficiency and robustness
%{
% Define part1 f(x)
f = @(x) exp(x^2);
%}

% Define part2 f(x)
k = 8;
f = @(x) exp(x^(2*k));

root = 0;

% Parameters
N = 100;
an = -1;
bn = 1/2;
cn = 1;
error=1:N;
n=1:N;

for i=1:N
    i   % checking, print iteration number
    [an,bn,cn] = minimum(f, an, bn, cn); % Call the function to compute minima
    error(i) = abs(root-bn);
end
    
semilogy(n,error)  % Plot the error versus iteration number
% title('Error VS Iteration')
title(['Error VS Iteration when k = ' num2str(k)])
xlabel('Iteration')
ylabel('Absolute Error')
grid on;
