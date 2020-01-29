tracking = zeros(1,100);
for i = 1:1005
    wins = 0; % initialize
    losses = 0;
    for y = 1:100 % 1000 iterations
        doors = zeros(1,3); % three empty doors
        winner = randi(3); % generate a number of [1 2 3]
        doors(winner) = 1; % put a one in the indes generated above
        
        selected = ones(1,3); % all have equal possibility of being selected
        
        choose = randi(3); % generate a number of [1 2 3]
        selected(choose) = 0; % that number is now selected
        
        reveal = choose; % initialize reveal equal to the choosen
        while reveal == choose || doors(reveal) == 1 % if they are the same or equal to the correct door
            reveal = randi(3); % choose a different selected revealed door
        end
        selected(reveal) = 0; % that door can no longer be selected
        
        choose = find(selected); % the player then selects the other door from initially chosen
        
        if choose == find(doors) % if that door is correct
            wins = wins + 1; % add one to the 'wins' variable
        else
            losses = losses + 1; % add one to the 'losses' variable
        end
    end
    tracking(i) = wins;
end
% disp(['wins: ',num2str(wins), '/10000']); % display wins
% disp(['losses: ',num2str(losses), '/10000']); % display losses