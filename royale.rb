require_relative 'ui'

def da_boas_vindas
  puts "Hello, What's your name?"
  name = gets.strip
  puts "you're a traveller and your name is #{name}"
  name
end

def da_arma(arma)
    random = rand(arma.size)
    puts random
    arma = arma[random]
    puts arma
    arma
end

def sortea_arma
    random = rand(6)
    case random
    when 1
        da_arma [['AWM',82],['VSS',50],['SKS',80]]
    when 2
        da_arma [['M4A1',53],['Ak',61],['Famas',53]]
    when 3
        da_arma [['MP5',48],['p90',48],['UMP',48]]
    when 4
        da_arma [['SPAS',97],['Winchester87',94],['Cheline',100]]
    when 5
        da_arma [['USP',45],['Desert Eagle',63],['3.8tão',50]]
    end
end

def sortea_obstaculos_premium
  sortea_arma
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

#name = da_boas_vindas
#mapa = gera_mapa
#puts mapa
arma = sortea_arma

puts arma