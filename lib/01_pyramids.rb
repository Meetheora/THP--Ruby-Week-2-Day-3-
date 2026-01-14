def half_pyramid
  puts "Veuillez entrer un nombre d'étage"
  etages = gets.chomp.to_i

  etages.times do |tour|
    puts "#" * (etages - tour)
  end
end

def full_pyramid
  puts "Combien d'étages veux-tu?"
  etages = gets.chomp.to_i

  for tour in (1..etages) do
  espaces = etages - tour
  dieses = 2 * tour - 1
  puts (" " * espaces) + ("#" * dieses)
  end
end

def wtf_pyramid
  puts "Combien d'étages veux-tu?"
  etages = gets.chomp.to_i

  for tour in (1..etages) do
    espaces = etages - tour
    dieses = 2 * tour - 1
    puts (" " * espaces) + ("#" * dieses)
  end

  for tour in (1..etages - 1).to_a.reverse! do
    espaces = etages - tour
    dieses = 2 * tour - 1
    puts (" " * espaces) + ("#" * dieses)
  end
end

wtf_pyramid