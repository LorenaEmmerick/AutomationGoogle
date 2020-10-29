class GooglePage
    include Capybara::DSL
  
    def visitar
        visit ""
    end

    def verificarPagina
        find('input[value="Pesquisa Google"]', :visible => true)
    end

    def escreverNaBarra(itens)
        find(:xpath, '//*[@id="tsf"]/div[2]/div[1]/div[1]').click 
        barra = find('input[title="Pesquisar"]', :visible => false)
        barra.set itens
        #barra.send_keys :enter   
    end

    def clickPesquisar
        click_button "Pesquisa Google"
    end


    def verificarlink(url)
    find("link[href='https://#{url}/']", :visible => false)
    end
    

end