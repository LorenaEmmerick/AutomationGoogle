#language:pt


Funcionalidade: Pesquisar no Google
  Para que eu possa pesquisar no Google 
  Sendo um usuário com acesso a web
  
@Google
  Cenário: Pesquisar no Google com Sucesso
    
    Dado os itens para pesquisa são:
      | itens                 | URL                 |
      | iLAB Quality          | www.ilabquality.com |
    Quando visito a página do Google
    E verifico que estou na página
    E pesquiso pelos itens desejados
    Então eu vejo a URL relacionada a pesquisa feita