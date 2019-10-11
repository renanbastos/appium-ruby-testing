# coding: utf-8
# frozen_string_literal: true

class MessagesScreen

    def initialize
      @select = 'com.android.mms:id/recipients_editor_to'
      @mensagem = 'com.android.mms:id/editor_body'
      # @usuario = 'com.google.android.apps.messaging:id/contact_picker_create_group'
      @envia = 'com.android.mms:id/send_button'
      @chat = 'com.android.mms:id/floating_action_button'

    end

    def selecionar(elemento)
      case elemento
        when "chat" then find_element(:id, @chat).click
        when "select" then find_element(:id, @select).click
        when "la" then find_element(:uiautomator, 'new UiSelector().text("Insira destinatários")').send_keys("240").press_keycode(66).manage.timeouts.implicit_wait = 5
        # when "usuario" then find_element(:id, @usuario).click
        when "sms" then find_element(:id, @mensagem).send_keys("tech")
        when "send" then find_element(:id, @envia).click
      end
    end


end
