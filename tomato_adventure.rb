def prompt()
  print "> "
end

def plum_tomato
  puts "Week 1: Do you water or wait?"
  tomato_grow = false

  while true
    prompt; next_move = gets.chomp

    if next_move == "wait"
      dead("The seeds never sprout and no tomatos grow.")
    elsif next_move == "water" and not tomato_grow
      puts "Great! The seeds love the drink."
      tomato_grow = true

      puts "Week 4: Your tomatos are growing. Cage or no cage?"
    elsif  next_move == "cage" and tomato_grow
      puts "Great! Your tomatoes are 4 feet high."
    elsif next_move == "no cage" and tomato_grow
      puts "Your tomatoes a growing as a viny bush"



      
    else
      puts "I don't understand your input."
    end
  end
end

def cherry_tomato
  
end

def dead(why)
  puts "#{why} Good Job!"
  Process.exit(0)
end

def start()
  puts "Welcome to your first tomato garden."
  puts "You have two choices of tomatos to plant."
  puts "Which do you choose? Plum or Cherry?"

prompt; next_move = gets.chomp

  if next_move == "plum"
    plum_tomato()
  elsif next_move == "cherry"
    cherry_tomato
  else
    dead("Nothing grows because you didn't plant anything.")
  end
end

start()