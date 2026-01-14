def dice
  rand(1..6) #Tire un nombre aléatoire dans la range spécifiée
  #Le mot return est optionnel, on le met pour la lisibilité
end

stairway = 10 
position = 0 #Ici 0 car position de départ

while position < stairway do #Pourquoi < ici? Parce que le moment où position = stairway, fin de la boucle, fin du jeu
  puts "Veuillez appuyer sur Entrée pour jeter le dé"
  gets.chomp #Saisie clavier, entrée pour le prochain dé
  case dice
  when 5 || 6
    position += 1 # += est la syntaxe pour incrémenter de 1
    puts "Vous avancez (enfin) d'une case, vous êtes à la marche #{position}" #interpolation pour montrer la position du joueur
  when 1
    position -= 1
    puts "Vous reculez d'une case :)) Vous êtes maintenant à la marche #{position}. Le but du jeu est d'avancer, gros noob ;)"
  else
    puts "Vous n'avancez pas... dommage. Vous êtes encore à la marche #{position} Et si vous essayiez de commencer à jouer? :) "
  end
end

puts "Bravo! Vous avez enfin terminé le jeu, vous gagnez un canard en ASCII
<(o )___
 ( ._> /
  `---'"