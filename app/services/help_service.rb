class HelpService
    def self.call
      response  = "*O que eu sei fazer :raised_hands:* \n\n"
      response += "*help*\n"
      response += ">Lista de comandos que eu conheço\n\n"
      response += "*Adicione ao Faq*\n"
      response += ">Adiciona uma nova questão ao Faq\n\n"
      response += "*Remova ID*\n"
      response += ">Remove uma questão baseada no ID dela\n\n"
      response += "*O que você sabe sobre X*\n"
      response += ">Pesquisa por palavra na lista de perguntas e respostas\n\n"
      response += "*Pesquise a hashtag X*\n"
      response += ">Lista as perguntas e respostas com aquela hashtag\n\n"
      response += "*Perguntas e Respostas*\n"
      response += ">Mostra a lista de perguntas e respostas\n\n"
      response += "*Adicionar link*\n"
      response += ">Adiciona link ao banco de dados\n\n"
      response += "*Listar links*\n"
      response += ">Lista os links armazenados\n\n"
      response += "*Remova link ID*\n"
      response += ">Remove um link baseado no ID\n\n"
      response += "*Você tem link sobre X*\n"
      response += ">Pesquisa por palavra nos llinks\n\n"
      response += "*Link hashtag X*\n"
      response += ">Lista as perguntas e respostas com aquela hashtag\n\n"
    end
  end