def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return 1+rand(10)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(n)
  puts "Sorry, you hit #{n}. Thanks for playing!"
end

def initial_round
  x= deal_card
  y= deal_card
  display_card_total(x+y)
  return x+y
end

def hit?(current_card_total)
  prompt_user
  get_user_input
    if get_user_input == "s"
        return current_card_total
    elsif get_user_input == "h"
        return current_card_total + deal_card
    else
        invalid_command
    end
end

def invalid_command
    puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
    until card_total > 21
        hit?(card_total)
    end
  end_game
end

runner
    
