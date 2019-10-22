# frozen_string_literal: true

Dado('que a aplicação está aberta') do
  @message = MessagesScreen.new
end

Então('seleciono o botao iniciar chat') do
  # @message.open_chat('chat')
  @message.open_chat
end

Quando('seleciono o espaço para inserir o numero') do
  # @message.selecionar('select')
  @message.select_contact
end

Então('adiciono um numero para envio de mensagens') do
  # @message.selecionar('la')
  @message.input_la
end

Então('seleciono o contato e escrevo a mensagem') do
  # @message.selecionar('usuario')
  @message.write_message
end

Então('envio a mensagem') do
  # @message.selecionar('send')
  @message.send_message
end
