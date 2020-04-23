# frozen_string_literal: true

describe 'Forms' do
  it 'login com sucesso' do
    visit 'https://account.microsoft.com/account?lang=pt-br'
    click_link 'signinlinkhero'
    sleep 2
    fill_in 'loginfmt', with: '------'
    click_button 'idSIButton9'
    sleep 2
    fill_in 'passwd', with: '------'
    click_button 'idSIButton9'
    sleep 2
    expect(page.title).to eql 'Conta da Microsoft | Início'
    sleep 2
  end
end
