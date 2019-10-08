# language: pt

Funcionalidade: Mandar mensagens
    Como usuário do dispositivo Android
    Eu quero enviar mensagens pelo app messages

Contexto: Aplicação está aberta
    Dado que a aplicação está aberta

Cenário: Iniciar o chat
  Então seleciono o botao iniciar chat

Cenário: Adiciono um numero para envio de mensagens
#   Quando seleciono o espaço para inserir o numero
  Então adiciono um numero para envio de mensagens

Cenário: Selecionar o contato para envio da mensagem
    Então seleciono o contato para envio da mensagem

Cenário: Escrever o texto e mandar a mensagem
    Quando escrevo a mensagem a ser enviada
    Então envio a mensagem
