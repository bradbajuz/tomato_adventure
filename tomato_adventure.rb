def prompt()
  print "> "
end

def seed_pick
  puts "Week 1: Do you water or wait?"
  tomato_grow = false

  while true
    prompt; next_move = gets.chomp

    if next_move == "wait"
      dead("The seeds never sprout and no tomatos grow.")
    elsif next_move == "water" and not tomato_grow
      puts "Great! The seeds love the drink."
      tomato_grow = true

      puts "Week 4: Your tomatoss are growing. Cage or no cage?"
    elsif  next_move == "cage" and tomato_grow
      puts "Great! Your tomatoes are 4 feet high."
      plum_tomato
    elsif next_move == "no cage" and tomato_grow
      puts "Your tomatoes a growing as a viny bush"
      cherry_tomato
    else
      puts "I don't understand your input."
    end
  end
end

def plum_tomato
  puts "Week 8: Tomatoes are 4 feet high. Trim or no trim?"
  tomato_grow = false

  while true
    prompt; next_move = gets.chomp
      
    if next_move == "no trim"
      dead("Your tomato plant didn't flower and produce fruit.")
    elsif next_move == "trim" and not tomato_grow
      puts "You made it to Week 10."
      puts "Your plant has flowered and produced fruit. You win!"
      tomato_grow = true
      Process.exit(0)
    else
      puts "I don't understand your input."
    end
  end
end

def cherry_tomato
  puts "Week 8: The tomatoes are 4 feet high but are laying on the ground. Cage or no cage?"
  tomato_grow = false

  while true
    prompt; next_move = gets.chomp

    if next_move == "cage"
      dead("The branches on the tomato plant break and the plant succumbs to death.")
    elsif next_move == "no cage" and not tomato_grow
      puts "You made it to Week 10."
      puts "Your plant has flowered and produced fruit. You win!"
      tomato_grow = true
      Process.exit(0)
    else
      puts "I don't understand your input."
     end 
   end
end

def dead(why)
  puts "#{why} Bummer..."
  Process.exit(0)
end

def start()
  puts "Welcome to your first tomato garden."
  puts "You have two choices of tomatos to plant."
  puts "Which do you choose? Plum or Cherry?"

prompt; next_move = gets.chomp

  if next_move == "plum"
    seed_pick()
  elsif next_move == "cherry"
    seed_pick()
  else
    dead("Nothing grows because you didn't plant anything.")
  end
end

start()