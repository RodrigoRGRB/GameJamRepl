require_relative 'ui'

def da_boas_vindas
  name = 'Rodrigo'
  puts "you're a traveller and your name is #{name} a bandit"
  puts "Your father left you before you were born, and your mother is a junkie."
  name
end

def resultado_dado(alcancar,soma)
  if soma >= alcancar
    puts "Exito precisava chegar em #{alcancar} e chegou em #{soma}"
  else
    puts "Falha precisava chegar em #{alcancar} e chegou em #{soma}"
  end
end

def roubar(dificuldade, valor_alcancar)
  alcancar = dificuldade * valor_alcancar
  soma = 0
  for n in (1..dificuldade)
    soma += rand(7) 
  end
  resultado_dado(alcancar, soma)
  soma
end


nome = da_boas_vindas
dia = 1
status = ''
dinheiro = 10

loop do
  puts "É um belo dia, primeiro dia de escola, seu amigo te chama para matar aula e ir roubar os velhinhos na praça, o que deseja fazer? \n1(não aceitar e ficar na escola) 2(aceitar e roubar os velhinhos)"
    resp = gets.strip
    if (resp == '1') || (resp == "2")
      case resp
      when '1'
        status = 'aluno'
        dinheiro = dinheiro
      when '2'
        status = 'bandido'
        dinheiro_tentativa = roubar(2,2)
        dinheiro += 10
      end
      break
    else 
      next
    end
end

puts "#{dia} #{status} #{dinheiro}"




 

