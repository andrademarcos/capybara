# frozen_string_literal: true

describe 'tabs', :tabs do
  before(:each) do
    visit 'https://training-wheels-protocol.herokuapp.com/tables'
  end

  it 'deve exibir o salário do stark' do
    atores = all('table tbody tr')
    stark = atores.detect { |ator| ator.text.include?('Robert Downey Jr') }
    puts stark.text
    expect(stark.text).to include '10.000.000'
  end

  it 'deve exibir o salário do vin diesel' do
    diesel = find('table tbody tr', text: '@vindiesel')
    expect(diesel).to have_content '10.000.000'
  end

  it 'deve exibir o filme velozes' do
    diesel = find('table tbody tr', text: '@vindiesel')
    movie = diesel.all('td')[2].text
    expect(movie).to eql 'Velozes e Furiosos'
  end

  it 'deve exibir o instagram do chris evans' do
    evans = find('table tbody tr', text: 'Chris Evans')
    instagram = evans.all('td')[4].text
    expect(instagram).to eql '@teamcevans'
  end

  it 'deve selecionar o Chris Pratt para remoção' do
    pratt = find('table tbody tr', text: 'Chris Pratt')
    pratt.find('a', text: 'delete').click
    msg = page.driver.browser.switch_to.alert.text
    expect(msg).to eql 'Chris Pratt foi selecionado para remoção!'
  end

  it 'deve selecionar o Chris Pratt para edição' do
    pratt = find('table tbody tr', text: 'Chris Pratt')
    pratt.find('a', text: 'edit').click
    msg = page.driver.browser.switch_to.alert.text
    expect(msg).to eql 'Chris Pratt foi selecionado para edição!'
  end
end
