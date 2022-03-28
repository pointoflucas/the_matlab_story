% Mustafa Barak - ID 2377570
% HW1_Q1

% Welcome message and taking INPUT
fprintf('Welcome to Egg Counter! Calculate the seconds required to cook an egg!\n');
M = input('What is the mass of the egg? (Small: 47g, Large: 67g): ');

% CONSTANTS
p = 1.038;              % specified heat capacity in : g cm^(−3)
c = 3.7;                % density in : J g^(−1) °C^(−1)

constant_block = ((M^(2/3))*c*(p^(1/3)))/0.13849;

T_fridge = 4;           % 4°C
T_room = 25;            % 25°C 
T_to_boil = 20;         % 20°C
T_water = 100;          % 100°C
T_cooked = 70;          % 70°C

% FIRST PROCESS
T_zero_1 = T_fridge;
T_ambient_1 = T_room;
T_yolk_1 = T_to_boil;
T_block_1 = (T_zero_1-T_ambient_1)/(T_yolk_1-T_ambient_1);
first_process = constant_block*log(0.76*T_block_1);

% SECOND PROCESS
T_zero_2 = T_to_boil;
T_ambient_2 = T_water;
T_yolk_2 = T_cooked;
T_block_2 = (T_zero_2-T_ambient_2)/(T_yolk_2-T_ambient_2);
second_process = constant_block*log(0.76*T_block_2);

% TOTAL PROCESS
total_process = first_process+second_process;

% Printing the RESULTS
fprintf('You need %f seconds to make the egg in the desired temperature in the first step.\n',first_process);
fprintf('You need %f seconds to make the egg in the desired temperature in the second step.\n',second_process);
fprintf('You need %f seconds in total to cook the egg.\n',total_process);
