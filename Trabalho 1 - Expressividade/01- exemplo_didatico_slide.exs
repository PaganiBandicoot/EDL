defmodule Exemplo do
    
    #Aqui cria-se uma Guard para verificar se os 3 lados do triangulo sao validos (integer ou float)
    defguard is_triangulo(a,b,c) when is_number(a) and is_number(b) and is_number(c) 
    
    #Aqui cria-se uma função para retornar e mostrar na tela o tipo do triângulo
    #com base nos lados passados; entretanto, a função só vai ser executada se
    #a Guard retornar "true".
    def tipo_triangulo(a,b,c) when is_triangulo(a,b,c) do
        cond do
            a == b and b == c -> 
                IO.puts "equilatero"
                
            a == b and b != c or a != b and b == c or a == c and a != b ->
                IO.puts "isosceles"
            a != b and b != c and a != c ->
                IO.puts "escaleno"
        end
    end
    
    #Caso a guard retorne "false", para que não ocorram erros de compilação
    #e o fluxo do programa não seja interrompido, cria-se uma outra declaração
    #da função a qual aceita quaisquer parâmetros e retorna uma mensagem de erro.
    def tipo_triangulo(_a,_b,_c) do
        IO.puts "Lados invalidos. Insira 3 numeros e tente novamente."
    end
    
end
    #Aqui fazem-se testes; no último a Guard retorna "false" pois inserimos um átomo ao invés de um número em um dos lados.
    Exemplo.tipo_triangulo(3,3,3) #retorna "equilatero"
    Exemplo.tipo_triangulo(3,4.0,3) #retorna "isosceles"
    Exemplo.tipo_triangulo(3,4,5) #retorna "escaleno"
    Exemplo.tipo_triangulo(:tres,3,3) #retorna "Lados invalidos. Insira 3 numeros e tente novamente."

