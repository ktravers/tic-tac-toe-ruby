#FLATIRON SCHOOL CODE CHALLENGE - RUBY TIC TAC TOE
#CODE BY KATE TRAVERS


#NOTE TO SELF: X WINNING COMBINATIONS
#topRow: game_board[0] == [" X "," X "," X "]
#midRow: game_board[1] == [" X "," X "," X "]
#lowRow: game_board[2] == [" X "," X "," X "]
#lftCol: (game_board[0][0] == " X ") && (game_board[1][0] == " X ") && (game_board[2][0] == " X ")
#midCol: (game_board[0][1] == " X ") && (game_board[1][1] == " X ") && (game_board[2][1] == " X ")
#rhtCol: (game_board[0][2] == " X ") && (game_board[1][2] == " X ") && (game_board[2][2] == " X ")
#lrDiag: (game_board[0][0] == " X ") && (game_board[1][1] == " X ") && (game_board[2][2] == " X ")
#rlDiag: (game_board[0][2] == " X ") && (game_board[1][1] == " X ") && (game_board[2][0] == " X ")

#NOTE TO SELF: O WINNING COMBINATIONS
#topRow: game_board[0] == [" O "," O "," O "]
#midRow: game_board[1] == [" O "," O "," O "]
#lowRow: game_board[2] == [" O "," O "," O "]
#lftCol: (game_board[0][0] == " O ") && (game_board[1][0] == " O ") && (game_board[2][0] == " O ")
#midCol: (game_board[0][1] == " O ") && (game_board[1][1] == " O ") && (game_board[2][1] == " O ")
#rhtCol: (game_board[0][2] == " O ") && (game_board[1][2] == " O ") && (game_board[2][2] == " O ")
#lrDiag: (game_board[0][0] == " O ") && (game_board[1][1] == " O ") && (game_board[2][2] == " O ")
#rlDiag: (game_board[0][2] == " O ") && (game_board[1][1] == " O ") && (game_board[2][0] == " O ")

#INITIAL GAME BOARD
game_board = [[" - "," - "," - "],[" - "," - "," - "],[" - "," - "," - "]]

#GAME BOARD KEY
board_key = [[" 0 "," 1 "," 2 "],[" 3 "," 4 "," 5 "],[" 6 "," 7 "," 8 "]]

#STRING VARIABLES
selectString = "please select a position: "
takenString = "That space is taken. Please select a different position."
invalidString = "Please enter a valid number from the board key."
yesNoString = "Please enter YES or NO."

#START GAME
puts "Let\'s play Tic Tac Toe!"
puts
puts "Player X will go first."
puts
puts "Please use the board key below to select your moves:"
puts
board_key.each { |line| puts "#{line}\n" }
puts

turn = 0
while turn < 9

    #PLAYER X MOVES
    xTurn = true        

    while xTurn == true
        print "Player X, "+selectString
        xMove = gets.chomp.to_i
        #Check if position is open, then add mark or tell player to reselect        	
        if xMove == 0
            if (game_board[0][0] != " X ") && (game_board[0][0] != " O ")
                game_board[0][0] = " X "
                turn += 1
                xTurn = false
            else
                puts takenString
            end    
        elsif xMove == 1
            if (game_board[0][1] != " X ") && (game_board[0][1] != " O ")
                game_board[0][1] = " X "
                turn += 1
                xTurn = false
            else
                puts takenString
            end
        elsif xMove == 2
            if (game_board[0][2] != " X ") && (game_board[0][2] != " O ")
                game_board[0][2] = " X "
                turn += 1
                xTurn = false
            else
                puts takenString
            end    
        elsif xMove == 3
            if (game_board[1][0] != " X ") && (game_board[1][0] != " O ")
                game_board[1][0] = " X "
                turn += 1
                xTurn = false
            else
                puts takenString
            end    
        elsif xMove == 4
            if (game_board[1][1] != " X ") && (game_board[1][1] != " O ")
                game_board[1][1] = " X "
                turn += 1
                xTurn = false
            else
                puts takenString    
            end    
        elsif xMove == 5
            if (game_board[1][2] != " X ") && (game_board[1][2] != " O ")
                game_board[1][2] = " X "
                turn += 1
                xTurn = false
            else
                puts takenString
            end    
        elsif xMove == 6
            if (game_board[2][0] != " X ") && (game_board[2][0] != " O ")
                game_board[2][0] = " X "
                turn += 1
                xTurn = false
            else
                puts takenString
            end    
        elsif xMove == 7
            if (game_board[2][1] != " X ") && (game_board[2][1] != " O ")
                game_board[2][1] = " X "
                turn += 1
                xTurn = false
            else
                puts takenString
            end    
        elsif xMove == 8
            if (game_board[2][2] != " X ") && (game_board[2][2] != " O ")
                game_board[2][2] = " X "
                turn += 1
                xTurn = false
            else
                puts takenString
            end    
        else 
            puts invalidString
        end   
    end  

    #DISPLAYS CURRENT GAME BOARD
    puts
    game_board.each { |line| puts "#{line}\n" }
    puts

    #CHECK FOR AN X WIN
    if  (game_board[0] == [" X "," X "," X "]) || 
        (game_board[1] == [" X "," X "," X "]) || 
        (game_board[2] == [" X "," X "," X "]) ||
        ((game_board[0][0] == " X ") && (game_board[1][0] == " X ") && (game_board[2][0] == " X ")) ||
        ((game_board[0][1] == " X ") && (game_board[1][1] == " X ") && (game_board[2][1] == " X ")) ||
        ((game_board[0][2] == " X ") && (game_board[1][2] == " X ") && (game_board[2][2] == " X ")) ||
        ((game_board[0][0] == " X ") && (game_board[1][1] == " X ") && (game_board[2][2] == " X ")) ||
        ((game_board[0][2] == " X ") && (game_board[1][1] == " X ") && (game_board[2][0] == " X "))
        puts "Player X wins!"
	break
    end

    #PLAYER O MOVES
    oTurn = true

    while oTurn == true
	print "Player O, "+selectString
        oMove = rand(9)

        #Check if position is open, then add mark or tell player to reselect        	
        if oMove == 0
            if (game_board[0][0] != " X ") && (game_board[0][0] != " O ")
              game_board[0][0] = " O "
              turn += 1
              oTurn = false
            else
                puts takenString
            end    
        elsif oMove == 1
            if (game_board[0][1] != " X ") && (game_board[0][1] != " O ")
                game_board[0][1] = " O "
                turn += 1
                oTurn = false
            else
                puts takenString
            end
        elsif oMove == 2
            if (game_board[0][2] != " X ") && (game_board[0][2] != " O ")
                game_board[0][2] = " O "
                turn += 1
                oTurn = false
            else
                puts takenString
            end    
        elsif oMove == 3
            if (game_board[1][0] != " X ") && (game_board[1][0] != " O ")
                game_board[1][0] = " O "
                turn += 1
                oTurn = false
            else
               puts takenString
            end    
        elsif oMove == 4
            if (game_board[1][1] != " X ") && (game_board[1][1] != " O ")
                game_board[1][1] = " O "
                turn += 1
                oTurn = false
            else
                puts takenString    
            end    
        elsif oMove == 5
            if (game_board[1][2] != " X ") && (game_board[1][2] != " O ")
                game_board[1][2] = " O "
                turn += 1
                oTurn = false
            else
                puts takenString
            end    
        elsif oMove == 6
            if (game_board[2][0] != " X ") && (game_board[2][0] != " O ")
                game_board[2][0] = " O "
                turn += 1
                oTurn = false
            else
                puts takenString
            end    
        elsif oMove == 7
            if (game_board[2][1] != " X ") && (game_board[2][1] != " O ")
                game_board[2][1] = " O "
                turn += 1
                oTurn = false
            else
                puts takenString
            end    
        elsif oMove == 8
            if (game_board[2][2] != " X ") && (game_board[2][2] != " O ")
                game_board[2][2] = " O "
                turn += 1
                oTurn = false
            else
                puts takenString
            end    
        else 
            puts invalidString
        end    
    end
    
    #DISPLAY CURRENT GAME BOARD
    puts
    puts
    game_board.each { |line| puts "#{line}\n" }
    puts

    #CHECK FOR AN O WIN
    if (game_board[0] == [" O "," O "," O "]) || 
       (game_board[1] == [" O "," O "," O "]) || 
       (game_board[2] == [" O "," O "," O "]) ||
       ((game_board[0][0] == " O ") && (game_board[1][0] == " O ") && (game_board[2][0] == " O ")) ||
       ((game_board[0][1] == " O ") && (game_board[1][1] == " O ") && (game_board[2][1] == " O ")) ||
       ((game_board[0][2] == " O ") && (game_board[1][2] == " O ") && (game_board[2][2] == " O ")) ||
       ((game_board[0][0] == " O ") && (game_board[1][1] == " O ") && (game_board[2][2] == " O ")) ||
       ((game_board[0][2] == " O ") && (game_board[1][1] == " O ") && (game_board[2][0] == " O "))
        puts "Player O wins!"
	break
    end
end
puts "Game over."


#CHECK IF PLAYER WANTS TO EXIT
puts "Ready to exit? "+yesNoString
check = false
while check == false 
    rematch = gets.chomp.upcase
    if rematch == "NO"
        puts "How about now? "+yesNoString  
    elsif rematch == "YES"
        puts "Thanks for playing Tic Tac Toe!"
        puts "Adios!"
        exit
    else
        puts "Sorry, I couldn't understand your answer. "+yesNoString
    end
end



#TO DO:
#1) Functions
#2) Methods?
#3) Restart option - how to?


