# frozen_string_literal: true

describe 'Forms' do
  it 'login com sucesso' do
    visit '/login'
    # fill_in funciona com ID ou name
    fill_in 'userId', with: 'stark'
    fill_in 'password', with: 'jarvis!'
    click_button 'Login'
    expect(find('#flash').visible?).to be true
    expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'
  end
end
