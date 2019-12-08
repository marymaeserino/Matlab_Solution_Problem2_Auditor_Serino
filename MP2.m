D1=input('Enter first coordinate x1: '); %User inputs for x and y coordinates
E1=input('Enter first coordinate y1: ');
D2=input('Enter second coordinate x2: ');
E2=input('Enter second coordinate y2: ');
D3=input('Enter third coordinate x3: ');
E3=input('Enter third coordinate y3: ');

%To solve for 3 equation 2 unknown
F=1;    
G1=-((D1*D1)+(E1*E1));
G2=-((D2*D2)+(E2*E2));
G3=-((D3*D3)+(E3*E3));

A=[2*D1 2*E1 F;2*D2 2*E2 F;2*D3 2*E3 F];
B=[G1; G2; G3;];   

z=A^-1*B; %MInverse of Matrix A is multiplied to matrix B to get the unknowns to be stored in z
D=z(1,1);E=z(2,1);F=z(3,1); %Values of D,E,F are called out from matrix z

fprintf('The center is (%.2f,%.2f) \n',-D,-E)  %prints the center
fprintf('The radius is %.2f \n',sqrt((D)*(D)+(E)*(E)-F)) %
fprintf('Vector [D,E,F]: [%.2f, %.2f, %.2f]\n ',D,E,F)

