%Group project: Guess the Phrase
%Authors: Crystal Cardenas, Kimberly Jacome, Brandon Trejo
%Date modified: November 20, 2019
%Description: Matlab version of "Guess the Phrase"

%NOTE: All 3 Enhancements are denoted within the following code.
%all car designs from: https://www.asciiart.eu/vehicles/cars
clc;
clear all;

fprintf('Welcome to Guess the Phrase!\n')
fprintf('1 - Easy \n')
fprintf('2 - Medium \n')
fprintf('3 - Hard \n')
fprintf('4 - Custom \n')
 
level = input('Please select level of difficulty or press 5 for instructions: ');

while (level~=1)&&(level~=2)&&(level~=3)&&(level~=4)&&(level~=5)
    level = input('Please select level of difficulty or press 5 for instructions: ');
end 
 
%EASY
if level == 1
    
    tries = 0;
    WIN = 0;
    PLAY = 0;
    SCORE = 0;
    hint = 1;
    
    while PLAY == 0
        
        a = ['entertaining          ';
            'development           ';
            'a dime a dozen        ';
            'birds of a feather    ';
            'wake up call          ';
            'talk the talk         ';
            'greased lightning     ';
            'wild goose chase      ';
            'quality time          ';
            'ring any bells        ';
            'under the weather     ';
            'fit as a fiddle       ';
            'drawing a blank       ';
            'my cup of tea         ';
            'i love the heat       ';
            'playing for keeps     '; 
            'know the ropes        ';
            'mouth watering        ';
            'fight fire with fire  ';
            'fish out of water     ';
            'ugly duckling         ';
            'football game         ';
            'throw in the towel    ';
            'lickety split         ';
            'photo shoot           ';
            'under your nose       ';
            'apostrophe            ';
            'sophisticated         ';
            'cats out of the bag   ';
            'pickled peppers       ';];
        
        word = a((ceil(30*rand)),:);
 
        PHRASE = word;
    
        for k = 1:length(word)
            if PHRASE(k) == ' '
                PHRASE(k) = ' ';
            else
                PHRASE(k) = '-';
            end
        end
    
        fprintf('Here is the phrase: %s\n',PHRASE)

        while (tries < 10) && (WIN < 1)
         
            letter = input('Guess a letter: ','s');
            match = 0;
             
            for k = 1:length(word)
                if letter == word(k) && PHRASE(k) == '-' 
                    PHRASE(k) = letter
                    match = 1;
                end
            end
        
            if match ~= 1
                tries = tries + 1;
            end
            
            car1 = [ ' o_______________}o{         ';
                     ' |              |   \        ';
                     ' |              |____\_____  ';
                     ' | _____        |    |_o__ | ';
                     ' [/ ___ \       |   / ___ \| ';
                     '[]_/.-.\_\______|__/_/.-.\_[]';
                     '___|(0)|_____________|(0)|___';
                     '   \.-./             \.-./   ';
                     '-- -- -- -- -- -- -- -- -- --';
                     '_____________________________'; ];
                 
                 if tries == 1
                     fprintf('%s\n', car1(1,:))
                 elseif tries == 2
                     fprintf('%s\n', car1(1,:))
                     fprintf('%s\n', car1(2,:))
                 elseif tries == 3
                     fprintf('%s\n', car1(1,:))
                     fprintf('%s\n', car1(2,:))
                     fprintf('%s\n', car1(3,:))
                 elseif tries == 4
                     fprintf('%s\n', car1(1,:))
                     fprintf('%s\n', car1(2,:))
                     fprintf('%s\n', car1(3,:))
                     fprintf('%s\n', car1(4,:))
                 elseif tries == 5
                     fprintf('%s\n', car1(1,:))
                     fprintf('%s\n', car1(2,:))
                     fprintf('%s\n', car1(3,:))
                     fprintf('%s\n', car1(4,:))
                     fprintf('%s\n', car1(5,:))
                 elseif tries == 6
                     fprintf('%s\n', car1(1,:))
                     fprintf('%s\n', car1(2,:))
                     fprintf('%s\n', car1(3,:))
                     fprintf('%s\n', car1(4,:))
                     fprintf('%s\n', car1(5,:))
                     fprintf('%s\n', car1(6,:))
                 elseif tries == 7
                     fprintf('%s\n', car1(1,:))
                     fprintf('%s\n', car1(2,:))
                     fprintf('%s\n', car1(3,:))
                     fprintf('%s\n', car1(4,:))
                     fprintf('%s\n', car1(5,:))
                     fprintf('%s\n', car1(6,:))
                     fprintf('%s\n', car1(7,:))
                 elseif tries == 8 
                     fprintf('%s\n', car1(1,:))
                     fprintf('%s\n', car1(2,:))
                     fprintf('%s\n', car1(3,:))
                     fprintf('%s\n', car1(4,:))
                     fprintf('%s\n', car1(5,:))
                     fprintf('%s\n', car1(6,:))
                     fprintf('%s\n', car1(7,:))
                     fprintf('%s\n', car1(8,:))
                 elseif tries == 9
                     fprintf('%s\n', car1(1,:))
                     fprintf('%s\n', car1(2,:))
                     fprintf('%s\n', car1(3,:))
                     fprintf('%s\n', car1(4,:))
                     fprintf('%s\n', car1(5,:))
                     fprintf('%s\n', car1(6,:))
                     fprintf('%s\n', car1(7,:))
                     fprintf('%s\n', car1(8,:))
                     fprintf('%s\n', car1(9,:))
                 elseif tries == 10
                     fprintf('%s\n', car1(1,:))
                     fprintf('%s\n', car1(2,:))
                     fprintf('%s\n', car1(3,:))
                     fprintf('%s\n', car1(4,:))
                     fprintf('%s\n', car1(5,:))
                     fprintf('%s\n', car1(6,:))
                     fprintf('%s\n', car1(7,:))
                     fprintf('%s\n', car1(8,:))
                     fprintf('%s\n', car1(9,:))
                     fprintf('%s\n', car1(10,:))
                 end
            %!!!
            %ENHANCEMENT #1: Once the player has reached half of the
            %alloted picture parts, they will be asked whether or not
            %they would like to use a hint.
            
            if tries == 5
                hint = input('Would you like a hint? Press 0 for Yes or 1 for No: ');
            end
            
            if hint == 0
                fprintf('Try using a vowel: a e i o u y\n');
                hint = 1;
            end
            
            %!!!
            
            if tries == 10
                fprintf('You lost.\n')
                PLAY = 1;
            end
                    
            if PHRASE == word
                WIN = WIN + 1;
                fprintf('YOU WIN!\n')
                SCORE = SCORE + 100;
            end 
        end
        
        %!!!
        %ENHANCEMENT #2: Once the phrase is correctly guessed, the user will be
        %asked whether they would like to keep playing in order to
        %achieve a higher score. If not, the game will end.
    
        if WIN == 1
            fprintf('Your current score for the game is: %d\n',SCORE)
            PLAY = input('Would you like to play again to reach a higher score? Press 0 for Yes or 1 for No: ');
        end
    
        if PLAY == 0
            WIN = 0;
            tries = 0;
        else
            fprintf('Your final score is: %d\n',SCORE),
            fprintf('Game over!\n')
        end
        
        %!!!
        
    end
end

%MEDIUM
if level == 2
    
    tries = 0;
    WIN = 0;
    PLAY = 0;
    SCORE = 0;
    hint = 1;
    
    while PLAY == 0
        
        b = ['vegetables        ';
            'vegetation        ';
            'anacondas         ';
            'mark my words     ';
            'coffee beans      ';
            'trademarked by    ';
            'sponsored by      ';
            'best of luck      ';
            'chips and salsa   ';
            'happy holidays    ';
            'guac is extra     ';
            'iced coffee       ';
            'fire department   ';
            'call an ambulance ';
            'deal breaker      ';
            'heart breaker     '; 
            'pumpkin patch     ';
            'love is in the air';
            'joy to the world  ';
            'merry christmas   ';
            'see you soon      ';
            'catch you later   ';
            'group projects    ';
            'coffee and milk   ';
            'cookies and milk  ';
            'peanut butter     ';
            'bond james bond   ';
            'academy award     ';
            'and the winner is ';
            'winter is coming  ';];
        
        word = b((ceil(30*rand)),:);
 
        
        PHRASE = word;
    
        for k = 1:length(word)
            if PHRASE(k) == ' '
                PHRASE(k) = ' ';
            else
                PHRASE(k) = '-';
            end
        end
    
        fprintf('Here is the phrase: %s\n',PHRASE)
        
        while (tries < 8) && (WIN < 1)
            
            letter = input('Guess a letter: ','s');
            match = 0;
             
            for k = 1:length(word)
                if letter == word(k) && PHRASE(k) == '-' 
                    PHRASE(k) = letter
                    match = 1;
                end
            end
            
            if match ~= 1
                tries = tries + 1;
            end
            
            car2 = [ '       ________            ';
                     '      // ||  \ \           ';
                     ' ____//__|| __\ \___       ';
                     ' )  _           _   \      ';
                     ' |_/ \_________/ \__|      ';
                     '___\_/_________\_/_________';
                     ' _ _ _ _ _ _ _ _ _ _ _ _ _ ';
                     '___________________________'];
                  
             if tries == 1
                 fprintf('%s\n', car2(1,:))
             elseif tries == 2
                 fprintf('%s \n', car2(1,:))
                 fprintf('%s \n', car2(2,:))
             elseif tries == 3
                 fprintf('%s \n' , car2(1,:))
                 fprintf('%s \n' , car2(2,:))
                 fprintf('%s \n' , car2(3,:))
             elseif tries == 4
                 fprintf('%s \n' , car2(1,:))
                 fprintf('%s \n' , car2(2,:))
                 fprintf('%s \n' , car2(3,:))
                 fprintf('%s \n' , car2(4,:))
             elseif tries == 5 
                 fprintf('%s \n' , car2(1,:))
                 fprintf('%s \n' , car2(2,:))
                 fprintf('%s \n' , car2(3,:))
                 fprintf('%s \n' , car2(4,:))
                 fprintf('%s \n' , car2(5,:))
             elseif tries == 6
                 fprintf('%s \n' , car2(1,:))
                 fprintf('%s \n' , car2(2,:))
                 fprintf('%s \n' , car2(3,:))
                 fprintf('%s \n' , car2(4,:))
                 fprintf('%s \n' , car2(5,:))
                 fprintf('%s \n' , car2(6,:))
             elseif tries == 7
                 fprintf('%s \n',  car2(1,:))
                 fprintf('%s \n' , car2(2,:))
                 fprintf('%s \n' , car2(3,:))
                 fprintf('%s \n' , car2(4,:))
                 fprintf('%s \n' , car2(5,:))
                 fprintf('%s \n' , car2(6,:))
                 fprintf('%s \n' , car2(7,:))
             elseif tries == 8
                 fprintf('%s \n',  car2(1,:))
                 fprintf('%s \n' , car2(2,:))
                 fprintf('%s \n' , car2(3,:))
                 fprintf('%s \n' , car2(4,:))
                 fprintf('%s \n' , car2(5,:))
                 fprintf('%s \n' , car2(6,:))
                 fprintf('%s \n' , car2(7,:))
                 fprintf('%s \n' , car2(8,:))
             end
                 
            %!!!
            %ENHANCEMENT #1: Once the player has reached half of the
            %alloted picture parts, they will be asked whether or not
            %they would like to use a hint.
            
            if tries == 4
                hint = input('Would you like a hint? Press 0 Yes or 1 for No: ');
            end
            
            if hint == 0
                fprintf('Try using a vowel: a e i o u y\n');
                hint = 1;
            end
            
            %!!!
        
            if tries == 8
                fprintf('You lost.\n')
                PLAY = 1;
            end
                    
            if PHRASE == word
                WIN = WIN + 1;
                fprintf('YOU WIN!\n')
                SCORE = SCORE + 100;
            end 
        end
        
        %!!!
        %ENHANCEMENT #2: Once the phrase is correctly guessed, the user will be
        %asked whether they would like to keep playing in order to
        %achieve a higher score. If not, the game will end.
    
        if WIN == 1
            fprintf('Your current score for the game is: %d\n',SCORE)
            PLAY = input('Would you like to play again to reach a higher score? Press 0 for Yes or 1 for No: ');
        end
    
        if PLAY == 0
            WIN = 0;
            tries = 0;
        else
            fprintf('Your final score is: %d\n',SCORE),
            fprintf('Game over!\n')
        end
        
       %!!!
       
    end
end

%HARD
if level == 3
    
    clc;
    tries = 0;
    WIN = 0;
    PLAY = 0;
    SCORE = 0;
    hint = 1;
    
    while PLAY == 0
        
        c = ['consideration  ';
            'precedent      ';
            'constellation  ';
            'cathedral      ';
            'pneumonia      ';
            'strikebreaker  ';
            'satisfaction   ';
            'dialect        ';
            'litigation     ';
            'omission       ';
            'disposition    ';
            'conscious      ';
            'epicalyx       ';
            'hypothesize    ';
            'vigorous       ';
            'redundancy     '; 
            'memorandum     ';
            'representative ';
            'ample          ';
            'relinquish     ';
            'ivory          ';
            'remunerate     ';
            'basin          ';
            'wisecrack      ';
            'embox          ';
            'motif          ';
            'ambiguous      ';
            'hemisphere     ';
            'brutalization  ';
            'bamboozlement  ';];
        
        word = c((ceil(30*rand)),:);

    
        PHRASE = word;
    
        for k = 1:length(word)
            if PHRASE(k) == ' '
                PHRASE(k) = ' ';
            else
                PHRASE(k) = '-';
            end
        end
    
        fprintf('Here is the phrase: %s\n',PHRASE)
   
        while (tries < 6) && (WIN < 1)
         
            letter = input('Guess a letter: ','s');
            match = 0;
             
            for k = 1:length(word)
                if letter == word(k) && PHRASE(k) == '-' 
                    PHRASE(k) = letter;
                    match = 1;
                end
            end
            
            if match == 1
                clc;
                fprintf('%s\n',PHRASE)
            end
            
            if match ~= 1
                tries = tries + 1;
            end
            
            car3 = [ '       ________         ';
                     '      // ||  \ \        ';
                     ' ____//__|| __\ \___    ';
                     ' )  _           _   \   ';
                     ' |_/ \_________/ \__|   ';
                     '___\_/_________\_/______'];
                 
            if tries == 1
                clc;
                fprintf('%s\n',PHRASE)
                fprintf('%s\n', car3(1,:))
            elseif tries == 2
                clc;
                fprintf('%s\n',PHRASE)
                fprintf('%s \n', car3(1,:))
                fprintf('%s \n', car3(2,:))
            elseif tries == 3
                clc;
                fprintf('%s\n',PHRASE)
                fprintf('%s \n' , car3(1,:))
                fprintf('%s \n' , car3(2,:))
                fprintf('%s \n' , car3(3,:))
            elseif tries == 4
                clc;
                fprintf('%s\n',PHRASE)
                fprintf('%s \n' , car3(1,:))
                fprintf('%s \n' , car3(2,:))
                fprintf('%s \n' , car3(3,:))
                fprintf('%s \n' , car3(4,:))
            elseif tries == 5
                clc;
                fprintf('%s\n',PHRASE)
                fprintf('%s \n' , car3(1,:))
                fprintf('%s \n' , car3(2,:))
                fprintf('%s \n' , car3(3,:))
                fprintf('%s \n' , car3(4,:))
                fprintf('%s \n' , car3(5,:))
            elseif tries == 6
                clc;
                fprintf('%s\n',PHRASE)
                fprintf('%s \n' , car3(1,:))
                fprintf('%s \n' , car3(2,:))
                fprintf('%s \n' , car3(3,:))
                fprintf('%s \n' , car3(4,:))
                fprintf('%s \n' , car3(5,:))
                fprintf('%s \n' , car3(6,:))
            end 
            
            %!!!
            %ENHANCEMENT #1: Once the player has reached half of the
            %alloted picture parts, they will be asked whether or not
            %they would like to use a hint.
            
            if tries == 3
               hint = input('Would you like a hint? Press 0 Yes or 1 for No: ');
            end
            
            if hint == 0
                fprintf('Try using a vowel: a e i o u y\n');
                hint = 1;
            end
            
            %!!!
        
            if tries == 6
                fprintf('You lost.\n')
                PLAY = 1;
            end
                    
            if PHRASE == word
                WIN = WIN + 1;
                fprintf('YOU WIN!\n')
                SCORE = SCORE + 100;
            end
        end
        
        %!!!
        %ENHANCEMENT #2: Once the phrase is correctly guessed, the user will be
        %asked whether they would like to keep playing in order to
        %achieve a higher score. If not, the game will end.
    
        if WIN == 1
            fprintf('Your current score for the game is: %d\n',SCORE)
            PLAY = input('Would you like to play again to reach a higher score? Press 0 for Yes or 1 for No: ');
        end
    
        if PLAY == 0
            clc;
            WIN = 0;
            tries = 0;
        else
            fprintf('Your final score is: %d\n',SCORE),
            fprintf('Game over!\n')
        end
        
        %!!!
        
    end
end

%CUSTOM
if level == 4
    
    tries = 0;
    WIN = 0;
    PLAY = 0;
    SCORE = 0;
    hint = 1;
    
    while PLAY == 0
    
        word = input('Enter a phrase: ','s');
        
        PHRASE = word;
    
        for k = 1:length(word)
            if PHRASE(k) == ' '
                PHRASE(k) = ' ';
            else
                PHRASE(k) = '-';
            end
        end
    
        clc;
        fprintf('Here is the phrase: %s\n',PHRASE)
    
        while (tries < 8) && (WIN < 1)
            
            letter = input('Guess a letter: ','s');
            match = 0;
             
            for k = 1:length(word)
                if letter == word(k) && PHRASE(k) == '-' 
                    PHRASE(k) = letter;
                    match = 1;
                end
            end
            
            if match == 1
                fprintf('%s\n',PHRASE)
            end
                
            if match ~= 1
                tries = tries + 1;
            end
            
            car4 = [ '       ________            ';
                     '      // ||  \ \           ';
                     ' ____//__|| __\ \___       ';
                     ' )  _           _   \      ';
                     ' |_/ \_________/ \__|      ';
                     '___\_/_________\_/_________';
                     ' _ _ _ _ _ _ _ _ _ _ _ _ _ ';
                     '___________________________'];
                
            if tries == 1
                clc;
                fprintf('%s\n',PHRASE)
                fprintf('%s\n', car4(1,:))
            elseif tries ==2
                clc;
                fprintf('%s\n',PHRASE)
                fprintf('%s \n', car4(1,:))
                fprintf('%s \n', car4(2,:))
            elseif tries == 3
                clc;
                fprintf('%s\n',PHRASE)
                fprintf('%s \n' , car4(1,:))
                fprintf('%s \n' , car4(2,:))
                fprintf('%s \n' , car4(3,:))
            elseif tries == 4
                clc;
                fprintf('%s\n',PHRASE)
                fprintf('%s \n' , car4(1,:))
                fprintf('%s \n' , car4(2,:))
                fprintf('%s \n' , car4(3,:))
                fprintf('%s \n' , car4(4,:))
            elseif tries == 5
                clc;
                fprintf('%s\n',PHRASE)
                fprintf('%s \n' , car4(1,:))
                fprintf('%s \n' , car4(2,:))
                fprintf('%s \n' , car4(3,:))
                fprintf('%s \n' , car4(4,:))
                fprintf('%s \n' , car4(5,:))
            elseif tries == 6
                clc;
                fprintf('%s\n',PHRASE)
                fprintf('%s \n' , car4(1,:))
                fprintf('%s \n' , car4(2,:))
                fprintf('%s \n' , car4(3,:))
                fprintf('%s \n' , car4(4,:))
                fprintf('%s \n' , car4(5,:))
                fprintf('%s \n' , car4(6,:))
            elseif tries == 7
                clc;
                fprintf('%s\n',PHRASE)
                fprintf('%s \n',  car4(1,:))
                fprintf('%s \n' , car4(2,:))
                fprintf('%s \n' , car4(3,:))
                fprintf('%s \n' , car4(4,:))
                fprintf('%s \n' , car4(5,:))
                fprintf('%s \n' , car4(6,:))
                fprintf('%s \n' , car4(7,:))
            elseif tries == 8
                clc;
                fprintf('%s\n',PHRASE)
                fprintf('%s \n',  car4(1,:))
                fprintf('%s \n' , car4(2,:))
                fprintf('%s \n' , car4(3,:))
                fprintf('%s \n' , car4(4,:))
                fprintf('%s \n' , car4(5,:))
                fprintf('%s \n' , car4(6,:))
                fprintf('%s \n' , car4(7,:))
                fprintf('%s \n' , car4(8,:))
            end 
                        
            %!!!
            %ENHANCEMENT #1: Once the player has reached half of the
            %alloted picture parts, they will be asked whether or not
            %they would like to use a hint.
            
            if tries == 5
               hint = input('Would you like a hint? Press 0 Yes or 1 for No: ');
            end
            
            if hint == 0
                fprintf('Try using a vowel: a e i o u y\n');
                hint = 1;
            end
            
            %!!!
            
            if tries == 8
                fprintf('You lost.\n')
                PLAY = 1;
            end
                    
            if PHRASE == word
                WIN = WIN + 1;
                fprintf('YOU WIN!\n')
                SCORE = SCORE + 100;
            end
        end
        
        %!!!
        %ENHANCEMENT #2: Once the phrase is correctly guessed, the user will be
        %asked whether they would like to keep playing in order to
        %achieve a higher score. If not, the game will end.
        
        if WIN == 1
            fprintf('Your current score for the game is: %d\n',SCORE)
            PLAY = input('Would you like to play again to reach a higher score? Press 0 for Yes or 1 for No: ');
        end
        
        if PLAY == 0
            clc;
            WIN = 0;
            tries = 0;
        else
            fprintf('Your final score is: %d\n',SCORE),
            fprintf('Game over!\n')
        end
        
        %!!!
        
    end
end

%!!!
%ENHANCEMENT #3: If the user enters '5' then they will be shown text
%which instructs them on how to play 'Guess the Phrase'

if level == 5
    
    fprintf('For each level, matlab will pick a phrase and display dashes in the \n place of each letter of the phrase. \n You will then be prompted to enter a letter.\n Enter one letter each time. \n If your letter is in the phrase, it will show up in the dashes. \n For each level, you have a certain number of incorrect tries allowed. \n Easy is 10 tries, medium is 8 tries, and hard is 6 tries. \n For the custom level, two players are required. \n One player will enter their chosen word/phrase \n when prompted. The other player must guess the word/phrase by \n entering letters when prompted.\nCustom level has 8 incorrect tries allowed. \n For all levels, with each incorrect letter guessed a car part \n will be added to picture of a car on the screen. \n Please hit run, to play the game. \n');    
    
end

%!!!