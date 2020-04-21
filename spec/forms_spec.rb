# frozen_string_literal: true

describe 'Forms' do
  it 'login com sucesso' do
    visit 'https://training-wheels-protocol.herokuapp.com/login'
    # fill_in funciona com ID ou name
    fill_in 'userId', with: 'stark'
    fill_in 'password', with: 'jarvis!'
    click_button 'Login'
    expect(find('#flash').visible?).to be true
    sleep 5
  end
end
