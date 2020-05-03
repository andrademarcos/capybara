# frozen_string_literal: true

describe 'Login com cadastro', :login3 do
  before(:each) do
    visit 'https://training-wheels-protocol.herokuapp.com/access'
  end

  it 'login com sucesso' do
    # escopo
    within('#login') do
      find('input[name=username]').set 'stark'
      find('input[name=password]').set 'jarvis!'
      click_button 'Entrar'
    end

    msg = 'Olá, Tony Stark. Você acessou a área logada!'
    expect(find('#flash')).to have_content msg
  end

  it 'cadastro com sucesso' do
    within('#signup') do
      find('input[name=username]').set 'marcos'
      find('input[name=password]').set '123456'
      click_link 'Criar Conta'
    end

    msg = 'Dados enviados. Aguarde aprovação do seu cadastro!'
    expect(page).to have_content msg
  end
end
