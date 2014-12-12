#--------------------------------------------------CREDITS----------------------------------------------------#

#FLATIRON SCHOOL CODE CHALLENGE
#RUBY TIC TAC TOE - METHOD VERSION
#WRITTEN BY KATE TRAVERS

#---------------------------------------------INITIAL CONDITIONS----------------------------------------------#

class TicTacToe    #GAME INTENDED FOR HUMAN (PLAYER X) VS. COMPUTER (PLAYER O)

    def initialize
        #BLANK GAME BOARD
        @game_board = [[" - "," - "," - "],[" - "," - "," - "],[" - "," - "," - "]]

        #GAME BOARD KEY
        @board_key = [[" 0 "," 1 "," 2 "],[" 3 "," 4 "," 5 "],[" 6 "," 7 "," 8 "]]

        #STRING VARIABLES
        @selectString = "please select a position: "
        @takenString = "Sorry, that space is taken.\n\n"
        @invalidString = "Please enter a valid number from the board key."
        @yesNoString = "Please enter YES or NO."

        #INITIAL CONDITIONS
        @check = false
        @turn = 0
    end

    def intro #INTRO DIALOGUE
        puts "-----------------------\n" +"Let\'s play Tic Tac Toe!"
        puts
        puts "Player X will go first."
        puts
        puts "Please use the board key below to select your moves:"
        puts
        @board_key.each { |line| puts "#{line}\n" }
        puts
    end
 
#---------------------------------------------PLAYER X : ONE TURN---------------------------------------------#   	
    
    def xMoves 
        xturn = true        
        while xturn == true
            print "Player X, "+@selectString
            xMove = gets.chomp.to_i

            #CHECK IF POSITION IS OPEN, THEN ADD MARK OR TELL PLAYER TO RESELECT        	
            if xMove == 0
                if (@game_board[0][0] != " X ") && (@game_board[0][0] != " O ")
                    @game_board[0][0] = " X "
                    @turn += 1
                    xturn = false
                else
                    puts @takenString
                end    
            elsif xMove == 1
                if (@game_board[0][1] != " X ") && (@game_board[0][1] != " O ")
                    @game_board[0][1] = " X "
                    @turn += 1
                    xturn = false
                else
                    puts @takenString
                end
            elsif xMove == 2
                if (@game_board[0][2] != " X ") && (@game_board[0][2] != " O ")
                    @game_board[0][2] = " X "
                    @turn += 1
                    xturn = false
                else
                    puts @takenString
                end    
            elsif xMove == 3
                if (@game_board[1][0] != " X ") && (@game_board[1][0] != " O ")
                    @game_board[1][0] = " X "
                    @turn += 1
                    xturn = false
                else
                    puts @takenString
                end    
            elsif xMove == 4
                if (@game_board[1][1] != " X ") && (@game_board[1][1] != " O ")
                    @game_board[1][1] = " X "
                    @turn += 1
                    xturn = false
                else
                    puts @takenString    
                end    
            elsif xMove == 5
                if (@game_board[1][2] != " X ") && (@game_board[1][2] != " O ")
                    @game_board[1][2] = " X "
                    @turn += 1
                    xturn = false
                else
                    puts @takenString
                end    
            elsif xMove == 6
                if (@game_board[2][0] != " X ") && (@game_board[2][0] != " O ")
                    @game_board[2][0] = " X "
                    @turn += 1
                    xturn = false
                else
                    puts @takenString
                end    
            elsif xMove == 7
                if (@game_board[2][1] != " X ") && (@game_board[2][1] != " O ")
                    @game_board[2][1] = " X "
                    @turn += 1
                    xturn = false
                else
                    puts @takenString
                end    
            elsif xMove == 8
                if (@game_board[2][2] != " X ") && (@game_board[2][2] != " O ")
                    @game_board[2][2] = " X "
                    @turn += 1
                    xturn = false
                else
                    puts @takenString
                end    
            else 
                puts @invalidString
            end   
        end
    end

#---------------------------------------------PLAYER O : ONE TURN---------------------------------------------#  

    def oMoves #NOTE: PLAYER O IS THE "COMPUTER", AND MOVES ARE SELECTED USING THE 'RAND' METHOD
        oturn = true
        while oturn == true
            oMove = rand(9)
       	    puts "Player O, "+@selectString+oMove.to_s

            #CHECK IF POSITION IS OPEN, THEN ADD MARK OR TELL PLAYER TO RESELECT      	
            if oMove == 0
                if (@game_board[0][0] != " X ") && (@game_board[0][0] != " O ")
                  @game_board[0][0] = " O "
                  @turn += 1
                  oturn = false
                else
                    puts @takenString
                end    
            elsif oMove == 1
                if (@game_board[0][1] != " X ") && (@game_board[0][1] != " O ")
                    @game_board[0][1] = " O "
                    @turn += 1
                    oturn = false
                else
                    puts @takenString
                end
            elsif oMove == 2
                if (@game_board[0][2] != " X ") && (@game_board[0][2] != " O ")
                    @game_board[0][2] = " O "
                    @turn += 1
                    oturn = false
                else
                    puts @takenString
                end    
            elsif oMove == 3
                if (@game_board[1][0] != " X ") && (@game_board[1][0] != " O ")
                    @game_board[1][0] = " O "
                    @turn += 1
                    oturn = false
                else
                   puts @takenString
                end    
            elsif oMove == 4
                if (@game_board[1][1] != " X ") && (@game_board[1][1] != " O ")
                    @game_board[1][1] = " O "
                    @turn += 1
                    oturn = false
                else
                    puts @takenString    
                end    
            elsif oMove == 5
                if (@game_board[1][2] != " X ") && (@game_board[1][2] != " O ")
                    @game_board[1][2] = " O "
                    @turn += 1
                    oturn = false
                else
                    puts @takenString
                end    
            elsif oMove == 6
                if (@game_board[2][0] != " X ") && (@game_board[2][0] != " O ")
                    @game_board[2][0] = " O "
                    @turn += 1
                    oturn = false
                else
                    puts @takenString
                end    
            elsif oMove == 7
                if (@game_board[2][1] != " X ") && (@game_board[2][1] != " O ")
                    @game_board[2][1] = " O "
                    @turn += 1
                    oturn = false
                else
                    puts @takenString
                end    
            elsif oMove == 8
                if (@game_board[2][2] != " X ") && (@game_board[2][2] != " O ")
                    @game_board[2][2] = " O "
                    @turn += 1
                    oturn = false
                else
                    puts @takenString
                end    
            else 
                puts @invalidString
            end    
        end
    end            

#---------------------------------------------CURRENT GAME BOARD----------------------------------------------#

    def currentBoard #DISPLAYS CURRENT GAME BOARD
        puts
        @game_board.each { |line| puts "#{line}\n" }
        puts
    end

#-----------------------------------------------CHECK FOR WINS------------------------------------------------#

    def xWin #CHECKS FOR AN X WIN
        if  (@game_board[0] == [" X "," X "," X "]) || 
            (@game_board[1] == [" X "," X "," X "]) || 
            (@game_board[2] == [" X "," X "," X "]) ||
            ((@game_board[0][0] == " X ") && (@game_board[1][0] == " X ") && (@game_board[2][0] == " X ")) ||
            ((@game_board[0][1] == " X ") && (@game_board[1][1] == " X ") && (@game_board[2][1] == " X ")) ||
            ((@game_board[0][2] == " X ") && (@game_board[1][2] == " X ") && (@game_board[2][2] == " X ")) ||
            ((@game_board[0][0] == " X ") && (@game_board[1][1] == " X ") && (@game_board[2][2] == " X ")) ||
            ((@game_board[0][2] == " X ") && (@game_board[1][1] == " X ") && (@game_board[2][0] == " X "))
    	    #@turn = 9
	    return true
        end
    end

    def oWin #CHECKS FOR AN O WIN
        if  (@game_board[0] == [" O "," O "," O "]) || 
            (@game_board[1] == [" O "," O "," O "]) || 
            (@game_board[2] == [" O "," O "," O "]) ||
            ((@game_board[0][0] == " O ") && (@game_board[1][0] == " O ") && (@game_board[2][0] == " O ")) ||
            ((@game_board[0][1] == " O ") && (@game_board[1][1] == " O ") && (@game_board[2][1] == " O ")) ||
            ((@game_board[0][2] == " O ") && (@game_board[1][2] == " O ") && (@game_board[2][2] == " O ")) ||
            ((@game_board[0][0] == " O ") && (@game_board[1][1] == " O ") && (@game_board[2][2] == " O ")) ||
            ((@game_board[0][2] == " O ") && (@game_board[1][1] == " O ") && (@game_board[2][0] == " O "))
    	    #@turn = 9
	    return true
        end
    end

#---------------------------------------------------REMATCH---------------------------------------------------#

    def rematchYesNo 
        puts "Play again? "+@yesNoString
        @check = true
        playAgain = false
    
        while playAgain == false
            rematch = gets.chomp.upcase
            if rematch == "YES"
                puts
                # WARNING: SHAMELESS SELF PROMOTION
                puts "Great! You must have been very impressed with the person who coded this game."
                puts "Seems like Flatiron School material, right? <wink wink> <nudge nudge>"
                puts "…anyway, queuing up your new game now.\n\n"
	        playAgain = true
                TicTacToe.new.playGame
            elsif rematch == "NO"
                puts
                puts "Thanks for playing Tic Tac Toe!"
                puts "Adios!"
                @check = true	
                exit
            else
                puts "Sorry, I couldn't understand your answer. "+@yesNoString
            end
        end
    end

#--------------------------------------------------PLAY GAME--------------------------------------------------#

    def playGame

        TicTacToe.new.intro

        while @check == false

            while @turn < 9      #GAME ENDS AFTER 8 TURNS MAX (TIE)
                xMoves           #PLAYER X TAKES TURN
                currentBoard     #DISPLAYS CURRENT BOARD
                xWin             #CHECKS IF PLAYER X HAS WON, EXITS IF YES
                if xWin == true
                    puts "Player X wins! Nice job."
                    break
                end

                oMoves           #PLAYER O TAKES TURN
                currentBoard     #DISPLAYS CURRENT BOARD
                oWin             #CHECKS IF PLAYER O HAS WON, EXITS IF YES
                if oWin == true
                    puts "Player O wins! Better luck next time."                    
                    break
                end
            end 
            if (xWin != true) && (oWin != true)
                puts "Game over."
            end
            puts
            rematchYesNo
        end                             
    end

end #END OF CLASS TIC TAC TOE

#----------------------------------------------------GAME-----------------------------------------------------#

TicTacToe.new.playGame

#------------------------------------------------CLOSING NOTES------------------------------------------------#

#LEARNING WISHLIST: 
#1) D.R.Y. PRINCIPLE - DON'T REPEAT YOURSELF
#2) BETTER UNDERSTANDING OF METHODS
#3) BETTER UNDERSTANDING OF CLASSES