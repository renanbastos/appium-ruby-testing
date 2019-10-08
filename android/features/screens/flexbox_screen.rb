# coding: utf-8
# frozen_string_literal: true

class MessagesScreen

    def initialize
      @select = 'com.google.android.apps.messaging:id/recipient_text_view'
      @mensagem = 'com.google.android.apps.messaging:id/compose_message_text'
      @usuario = 'com.google.android.apps.messaging:id/contact_picker_create_group'
      @tela = 'com.google.android.apps.messaging:id/action_bar_root'
      @envia = 'com.google.android.apps.messaging:id/send_message_button_icon'
      @chat = 'com.google.android.apps.messaging:id/start_new_conversation_button'

    end

    def selecionar(elemento)
      case elemento
        when "chat" then find_element(:id, @chat).click
        when "select" then find_element(:id, @select).click
        when "la" then find_element(:accessibility_id, @select).send_keys("222222")
        when "usuario" then find_element(:id, @usuario).click
        when "sms" then find_element(:id, @mensagem).send_keys("mensagem de texto")
        when "send" then find_element(:id, @envia).click
      end
    end


end
