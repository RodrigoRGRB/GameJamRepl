require_relative 'ui'

def da_boas_vindas
  puts "Hello, What's your name?"
  name = gets.strip
  puts "you're a traveller and your name is #{name}"
  name
end

def sortea_obstaculos_premium
  
end

def gera_mapa
  lateral = ""
  vertical = []
  for x in 1..5
    for x in 1..5
      lateral += "_ "
    end
    vertical << lateral
    lateral = ""
  end
  puts vertical[0].size
  vertical
end

name = da_boas_vindas
mapa = gera_mapa
puts mapa