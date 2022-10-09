Algoritmo "concurso"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Nelio Alves
// Descrição   : calcula se pessoa foi aprovada ou se há aprovado no concurso nota média de 70 pontos
// Autor(a)    : Marcio da Silva
// Data atual  : 09/10/2022
Var
   N,i, x:inteiro
   y, somaMedia:real
   NomeMedia:caracter

   vetN:vetor[0..9] de caracter
   vetEta1:vetor[0..9] de real
   vetEta2:vetor[0..9] de real
   vetMed:vetor[0..9] de real

Inicio
   x <- 0
   y <- 20
   somaMedia <- 0
   escreva("Qual a quantidade de pessoas? ")
   leia (N)

   para i de 0 ate N-1 faca
      escreval("Digite os dados da ",i + 1, "a pessoa:")
      escreva("Nome: ")
      leia(vetN[i])
      escreva("Nota etapa 1: ")
      leia(vetEta1[i])
      escreva("Nota etapa 2: ")
      leia(vetEta2[i])
   fimpara

   para i de 0 ate N-1 faca
      vetMed[i] <- ( vetEta1[i] + vetEta2[i]) / 2
   fimpara

   escreval()

   escreval("TABELA:")
   para i de 0 ate N-1 faca
      escreval(vetN[i],", ",(vetEta1[i]):4:1, ", ",(vetEta2[i]):4:1, ", Media= ", (vetMed[i]):4:2)
   fimpara

   escreval()

   escreval("PESSOAS APROVADAS:")
   para i de 0 ate N-1 faca

      se(vetMed[i] >= 70.00) entao
         x <- x + 1
         escreval(vetN[i])
         somaMedia <- somaMedia + vetMed[i]
      senao
         somaMedia <- 0
      fimse

      se(vetMed[i] > y) entao
         y <- vetMed[i]
         NomeMedia <- vetN[i]
      fimse
   fimpara

   escreval()

   escreval("Porcentagem de aprovação: ", ((x / N)*100):3:1," %")
   escreval("Maior média: ", NomeMedia)

   se(somaMedia > 0)entao
      escreval("Nota média dos aprovados: ", (somaMedia / x):4:2)
   senao
      escreval("Não há candidatos aprovados")
   Fimse

Fimalgoritmo