# frozen_string_literal: true

# :dropdown tag para realizar um únicio teste
# executando o comando rspec --tag @dropdown
describe 'Caixa de opções', :dropdown do
  it 'item específico simples' do
    visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
    # select só funciona com dropdown com ID
    select('Loki', from: 'dropdown')
  end

  it 'item específico com o find' do
    visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
    # buscando elemento por classes .avenger-list
    drop = find('.avenger-list')
    drop.find('option', text: 'Scott Lang').select_option
    sleep 3
  end

  it 'qualquer item', :sample do
    visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
    drop = find('.avenger-list')
    # all vai mostrar uma lista de arrays e o sample vai selecionar um item da lista
    drop.all('option').sample.select_option
    sleep 3
  end
end
