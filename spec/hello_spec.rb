# frozen_string_literal: true

describe 'meu primeiro sript' do
  it 'visitar a página' do
    visit '/'
    expect(page.title).to eql 'Training Wheels Protocol'
  end
end
