puts "Qual o seu nome?"
nome = gets.chomp 
#Gets = gaurda o valor de todo input ; Chomp = o valor é consumido até o enter 
puts "Qual a sua idade?"
idade = gets.chomp.to_i #to_i = converte para Int

puts "hello #{nome}" #Escreve no console.
print "#{nome} tem #{idade} anos" #Escreve no console sem pular linhas

#NUMEROS
puts "Insira um numero"
x = 2
y = 3.0

mult = x * y

puts mult ##output = 6.0 / prevalece o resultado float

puts "#{nome} " * 5 #retorna o nome multiplicado
#puts "#{nome} " + 5 #retorna ERRO!

if x == 10
  puts "x é igual a 10"
elsif x == 20 
  puts "x é igual 20"
else
  puts "x não é igual a 10 nem 20"
end

#ARRAYS
lista = [1, 2]
lista.push(3.0, "oi", [1, 2, 3]) #adiciona na lista
lista << "Clara" #adiciona na lista

lista.insert(2, "Xuxa") #insere em uma posição na lista, sem modificar os outros presentes
puts lista[3]
lista.delete(1) #deleta o elemento na posição na lista. também funciona com string exata.
puts lista[1..3] #percorre do elemento na primeira posição até o elemento na última

puts "--------------- SIMBOLOS"

#SIMBOLOS
#Símbolos são como variáveis tipo string que guardam certo valor, que serão salvos como um endereço de memória, e é imutável, podendo apenas existir um. 
module One
  class Fred
  end
  $f1 = :Fred
end

module Two
  Fred = 1
  $f2 = :Fred
end

def Fred()
end

$f3 = :Fred
$f1.object_id   #=> 2514190
$f2.object_id   #=> 2514190
$f3.object_id   #=> 2514190

puts "--------------- HASH"
#HASH (Dicionários)
#Todo elemento de dicionário será impresso como um símbolo.

hash = {nome: "Diego", idade: 32}
hash1 = Hash.new
puts hash[:nome], hash1

hash1[:altura] = 1.73 #Adiciona elemento ao fim da Hash

puts hash == hash1 #Compara ambas as Hashs, retorna boolean

hash.delete(:altura) #Deleta essa parte da Hash

puts hash.has_value?("Diego") #Retorna boolean se existe certo valor ou chave de Hash
puts hash.keys #retorna as chaves do Hash
puts hash.values #retorna os valores do Hash
puts hash.size #Tamanho da Hash

puts "--------------- REPETIÇÕES"

nomes = ["joão", "maria", "josé"]

for k, v in hash do
  puts "#{k}: #{v}"
end

count = 0
while count < nomes.size do
  puts nomes[count]
  count += 1
end

puts "--TIMES"
2.times do
  puts "oi"
end

puts "LOOP --"
count2 = 0
loop do 
  puts "olá"
  if count2 == 2
    break
  end
  count2 += 1
end

puts "FOR EACH --"
nomes.each do |nome|
  puts nome #a variável que está aqui não sobrescreve outras variáveis
end

hash.each do |k, v|
  puts "#{k}: #{v}"
end

puts "MAP --"
#Map pode ser usado em qualquer classe que tenha o método enumerable.
#Pode retornar um Array com o resultado do bloco aplicado para cada elemento recebido.
nomes_completos = nomes.map do |nome_completo|
  nome_completo + " sobrenome"
end
puts nomes_completos

# nomes.map! do |nome_completo|
#   nome_completo + "sobrenome"
# end
# puts nomes #Modifica os nomes

puts "--------------- MÉTODOS"
def soma(x, y, z)
  x + y + z #Quando não há return, a última linha sempre será usada para retornar
end

puts soma(1, 2, 3)

puts "--------------- OPERADOR TERNÁRIO"
nome_ternario = "Bianka"

puts nome_ternario.eql?("Bianka") ? "Olá Bianka" : "Olá Visitante"