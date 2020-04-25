# frozen_string_literal: true

describe 'Mouse Hover', :hovers do
  before(:each) do
    visit 'https://training-wheels-protocol.herokuapp.com/hovers'
  end

  it 'quando passo o mouse sobre o Blade' do
    card = find('img[alt=Blade]')
    card.hover
    expect(page).to have_content 'Nome: Blade'
  end

  it 'quando passo o mouse sobre o Pantera Negra' do
    # quando possuir espaço ou carectere especial é necessário inserir aspas duplas
    card = find('img[alt="Pantera Negra"]')
    card.hover
    expect(page).to have_content 'Nome: Pantera Negra'
  end

  it 'quando passo o mouse sobre o Homem Aranha' do
    # quando possuir espaço ou carectere especial é necessário inserir aspas duplas
    card = find('img[alt="Homem Aranha"]')
    card.hover
    expect(page).to have_content 'Nome: Homem Aranha'
  end
end
