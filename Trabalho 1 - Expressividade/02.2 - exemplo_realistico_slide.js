function pesquisar(termo){
    if (typeof(termo) === 'string'){
        //pesquisar por nome da contraparte
    } else if ((typeof termo === 'number') && (termo.toString().length == 13)){
        //pesquisar por CNPJ da contraparte
    } else if ((typeof termo === 'number') && (termo.toString().length == 44)){
        //pesquisar por chave da nota
    };
}