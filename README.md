# Performing-curve-fitting-operation-and-finding-out-the-best-fit.

Objective: - Write a MATLAB program to code to perform curve fitting.


⦁ The objective of the curve fitting is to find the parameter of a mathematical model that describes a set of values in a way, so to minimize the difference between the model and the data.
⦁ The most common approach is the linear least square method, also called Polynomial least-square a well known mathematical process for fitting the coefficients of polynomial equations that are best fit to set of x, y data.
⦁ A polynomial equation shows the dependent variable y as a polynomial in the independent variable x,
i.e. linear = y = a + bx
     cubic = y = a + bx + cx.^2 + dx.^3 (where a is the intercept and b,c,d,...is slope)
⦁ Those a,b,c,d variables are used to predict values of y for each x term.

How to make a curve fit perfectly?  

     Curve fit perfect means you are fitting actual data and the fit is perfect. The value of 
R
2
 = 1.0000 indicates a perfect fit.          
How to get the best fit?  

Best fit simply means that the difference between the actual measured Y value and the Y values predicted by the model equation are minimized.
What could be done to improve the cubic fit?

We can increase the order of polynomial by keeping the value of the degree of the equation more than 3.               
