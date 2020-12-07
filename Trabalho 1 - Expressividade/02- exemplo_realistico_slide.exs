defmodule Exemplo do

    defguard is_CNPJ(numero) when is_number(numero) and length(digits(numero)) == 13

    defguard is_chaveNfe(numero) when is_number(numero) and length(digits(numero)) == 44 

    #Ao pesquisar por uma nota, é possível filtrar o resultado
    #Pesquisando por um ou outro termo presente na nota.
    #Dependendo do tipo do termo usado na pesquisa, a aplicação
    #Vai executar uma das definições da função abaixo:
    def pesquisar(termo) when is_bitstring(termo) do
        #pesquisar por nome da contraparte
    end
    
    def pesquisar(termo) when is_CNPJ(termo) do
        #pesquisar por CNPJ da contraparte
    end

    def pesquisar(termo) when is_chaveNfe(termo) do
        #pesquisar por chave da nota 
    end

end