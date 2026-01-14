def say_hello(first_name)
  puts "Bonjour #{first_name}"
end

def ask_first_name
  puts "C'est quoi ton p'tit prénom?"
  name = gets.chomp
  return name
end

first_name = ask_first_name
say_hello(first_name)
