% Input
N = input('');

attempt = 1;
tree_head = 0;
six_head = 0;
nine_head = 0;
while attempt <= N
    toss_th = 1;
    head_number = 0;
    while toss_th <= 10
        coin_face = rand;
        if coin_face > 0.5
            head_number = head_number + 1;
        end
        toss_th = toss_th + 1;
    end
    attempt = attempt + 1;
    if head_number == 3
        tree_head = tree_head + 1;
    elseif head_number == 6
        six_head = six_head + 1;
    elseif head_number == 9
        nine_head = nine_head + 1;
    end
end

% Thanks to this script, it is conducted a study aiming to investigate how
% many tosses would head for different N values... Different values are
% given to N (respectively, '10-100-1000-10000-100000-1000000-10000000')
% and results for these experiments have been recorded to an additional
% excel file. Also, with probability distribution approach, probabilities
% of given cases have been calculated (This calculations and results can be
% seen in the excel file). Finally, it is concluded that while Monte Carlo
% approach fails with small N values, experiment results have converged
% with big N values.

