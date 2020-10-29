# Pesquisar no Google

Dado('os itens para pesquisa são:') do |table|
    @google_lista = table.hashes
  end
  
  Quando('visito a página do Google') do
    @google_page.visitar
  end
  
  Quando('verifico que estou na página') do 
    @google_lista.each do |google|
       @google_page.verificarPagina
    end
 end
  
  Quando('pesquiso pelos itens desejados') do
    @google_lista.each do |google|
        @google_page.escreverNaBarra(google["itens"])
        @google_page.clickPesquisar
    end
  end
  
  Então('eu vejo a URL relacionada a pesquisa feita') do
    @google_lista.each do |google|
        @google_page.verificarlink(google["URL"])
    end
  end