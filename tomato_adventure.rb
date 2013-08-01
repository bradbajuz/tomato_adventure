def prompt()
  print "> "
end

def plum_tomato
  
end

def cherry_tomato
  
end

def dead(why)
  puts "#{why} Good Job!"
  Process.exit(0)
end
  
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