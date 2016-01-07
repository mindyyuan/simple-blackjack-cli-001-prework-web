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

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  x= deal_card
  y= deal_card
  display_card_total(x+y)
  return x+y
end

def hit?(current_card_total)
  prompt_user
  x = get_user_input
    if x == "s"
        return current_card_total
        
    elsif x == "h"
        new_card_total = current_card_total + deal_card
        return new_card_total
        
    else
        invalid_command
        prompt_user
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
        card_total = hit?(card_total)
        display_card_total(card_total)
    end
  end_game(card_total)
end
    
