require "pry"

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(number)
  puts "Your cards add up to #{number}" 
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
 gets.chomp
end

def end_game(number)
  puts "Sorry, you hit #{number}. Thanks for playing!"
end

def initial_round
  card_1 = deal_card
  card_2 = deal_card
  total_card = card_1 + card_2
  display_card_total(total_card)
  return total_card
end

def hit?(total_card)
  prompt_user
  input = get_user_input
  if input == 's'
    total_card
  elsif input == 'h'
    new_card = deal_card
    total_card += new_card
  else 
    invalid_command
    prompt_user
    get_user_input
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
  initial_round
  hit? 
  binding.pry
  until total_card >= 21
  end
end
    
