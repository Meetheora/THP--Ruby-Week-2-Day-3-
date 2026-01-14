def signup
  puts "Veuillez créer votre mot de passe:"
  mdp = gets.chomp
  return mdp
end

def login(mdp)
  puts "Veuillez saisir votre mot de passe:"
  while true do #while et pas if pour créer une boucle qui continue de demander le mdp en cas d'erreur
    if gets.chomp == mdp #On a mis un if dans le while. Pendant la saisie gets.chomp, la boucle est mise en pause. Ici on pourrait if gets.chomp == mdp == true
      return true #Si la condition est validée ici, la boucle return true et donc le if login de def perform return true aussi, on passe à welcome_screen.
    end
    puts "Mot de passe incorrect" #while est une boucle qui continue tant que la condition
  end
  return false #Corrige une faille de sécurité (cf: if login dans def perform) car si on sort de la boucle de force, if login return false... 
end

def welcome_screen
  system("clear") #La méthode system sert à envoyer une commande dans le terminal. Ici: "clear".
  puts "
╔═══════════════════════╗
║   BIENVENUE ! 🏔️       ║ 
║   Pyramid Builder     ║
╔═══════════════════════╝
" #Fait en ASCII sur IA. 
end

#Le programme "met en pause" oerform quand j'appelle une autre méthode dedans, il l'éxécute puis continue de la lire
def perform #Le programme commence par la méthode perform, il va lire signup et aller chercher l'info dans def signup pour la stocker dans mdp (celui de def perform)
  mdp = signup #signup est exécutée, la saisie utilisateur a été return à la fin de def signup et stockée ici
  if login(mdp)   #Le programme lit login et va chercher def login et comme je lui ai mis la variable (mdp) -> def login (mdp) #if login est la même chose que if login == true (parce que if vérifie si c'est true). Ce if aide à corriger une faille de sécurité car welcome_screen ne se lance que si true.
    welcome_screen   #Le programme lit login et va chercher def login et comme je lui ai mis la variable (mdp) -> def login (mdp)
  end
end

perform