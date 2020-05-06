# frozen_string_literal: true

describe 'IDs dinâmicos', :idd do
  before(:each) do
    visit '/access'
  end

  it 'cadastro' do
    # $ => começa com
    # ^ => termina com
    # * => contém

    # find('#PortalTheme_wt10_block_wtcontent_holder_wt8_wtUsernameInput').set 'marcos'
    find('input[id$=UsernameInput]').set 'marcos'
    # find('#PasswordInput_wt11_PortalTheme_wt7_block_wtcontent_holder_wt8_wt').set '123456'
    find('input[id^=PasswordInput]').set '123456'
    # find('#PortalTheme_wt4_block_wtGetStartedButton_wtcontent_holder_OSCore_wt3_block').click
    find('a[id*=GetStartedButton]').click
    msg = 'Dados enviados. Aguarde aprovação do seu cadastro!'
    expect(page).to have_content msg
    sleep 3
  end
end
