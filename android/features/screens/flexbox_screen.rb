# frozen_string_literal: true

# comment
class MessagesScreen
  def initialize
    @select = 'com.android.mms:id/recipients_editor_to'
    @message = 'com.android.mms:id/editor_body'
    @send = 'com.android.mms:id/send_button'
    @chat = 'com.android.mms:id/floating_action_button'
  end

  def open_chat
    find_element(:id, @chat).click
  end

  def select_contact
    find_element(:id, @select).click
  end

  def input_la
    find_element(:uiautomator, 'new UiSelector().text("Insira destinatários")')
      .send_keys('+240')
      .press_keycode(66).manage.timeouts.implicit_wait = 5
  end

  def write_message
    find_element(:id, @message).send_keys('tech')
  end

  def send_message
    find_element(:id, @send).click
  end
end
