#----------------------- Methods -------------------#

# Will run the game 
def start_game
  print_welcome_intro
  play_game
  player = gets.chomp.downcase
  game_response(player)
  user = gets.chomp.downcase
  fight_or_flight_response(user)
  help = gets.chomp.downcase
  save_shout_response(help)
end

# Prints the welcome text of the game
def print_welcome_intro
  puts <<~EOF

  -------------------------------------------

  You have suddenly woken up inside a strange, rundown building. There are no lights on but you can smell the must slowly soaking into your clothes.

  A loud buzzer goes off to get your attention as a TV screen comes on. 

  Wanna play a game?

  EOF
end

# Ask user if they want to play
def play_game
  puts <<~EOF
  Only through the proper course of choices will you pass the test.

  Options: yes, no

  EOF
end

# Give user feedback if they have agreed to play
def game_response(playr)
  case playr
  when "yes"
    puts "\nI'm glad you've decided to participate."
    fight_or_flight
  when "no"
    puts "You awake suddenly in your bed at home, realizing it was all a dream."
    puts "\nGAME OVER"
    start_game
  else
    puts "A countdown begins on the TV screen."
    alt_compete_run
  end
end

# Action choice that will run if player enters anything other than yes or no
def alt_compete_run
  puts <<~EOF

  There's only 20 minutes on the screen. The seconds are counting down and you hear a scream from a near hallway. 

  Options: investigate noise, run home

  EOF
end

# Ask player what action they choose next
def fight_or_flight
  puts <<~EOF

  As the static on the TV screen slowly clears you realize it's a video of you, earlier that day. Suddenly, you hear a scream from down the hallway.

  Options: fight, flight

  EOF
end

# Will give feedback from the player's response to fight/investigate or flight/run
def fight_or_flight_response(usr)
  case usr
  when "fight" || "investigate noise"
   puts "You run down the hallway and you see your best friend blindfolded and standing at the edge of a stairwell."
   save_shout
  when "flight" || "run home"
    puts "You sprint out of the building and you are stopped by your best friend laughing in front of their car, you've realized they've pulled the ultimate prank."
    puts "\nGAME OVER"
    start_game
  else
    puts "You see a tall man dressed in a black suit walking towards you."
    alt_ending
  end
end

# Asks user if they want to save their friend alone or if they want to shout for help
def save_shout
  puts <<~EOF

  Your friend is still screaming for you to help them. Their hands and feet are tied. They shuffle slightly to the right and they begin to wobble on the edge of the stairs.

  Options: save friend, shout

  EOF
end

# Will tell the user what the reaction to their action choice is
def save_shout_response(hlp)
  case hlp
  when "save friend"
    puts "You rush up the stairs and grab your friend before they can fall."
    puts "\nA curtain behind the top of the stairwell opens and out walks Andrea, clapping for your heroic save. You've passed the test."
    puts "\nGAME OVER"
    start_game
  when "shout"
    puts "Superman comes flying through the air and barely saves your friend from falling."
    puts "Your best friend and Superman realize that it was meant to be and they've retired together and live happliy in New York City."
    puts "\nGAME OVER"
    start_game
  else
    puts "A bright flash goes off and you realize a photographer just took your photo. You have become the new fail meme and this was all a prank."
    puts "\nGAME OVER"
    start_game
  end
end

# Alternative ending if user does not enter proper response
def alt_ending
  puts <<~EOF

  Gru from Despicable Me comes into sight under a swinging lamp. Thousands of minions flood the room cheering for you.

  You've been asked to join the company and work under Dr. Nefario.

  GAME OVER

  EOF
  start_game
end

#----------------------- Game Play ----------------------#

start_game
