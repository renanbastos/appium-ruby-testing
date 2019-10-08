Dado("que a aplicação está aberta") do
    @message = MessagesScreen.new
    end

  Então("seleciono o botao iniciar chat") do
    @message.selecionar("chat")
    end

  Quando("seleciono o espaço para inserir o numero") do
    @message.selecionar("select")
  end

  Então("adiciono um numero para envio de mensagens") do
    @message.selecionar("la")
  end
  
  Então("seleciono o contato para envio da mensagem") do
    @message.selecionar("usuario")
  end

  Quando("escrevo a mensagem a ser enviada") do
    @message.selecionar("sms")
  end
  
  Então("envio a mensagem") do
    @message.selecionar("send")
  end
