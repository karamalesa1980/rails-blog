require "rails_helper"


feature "Account Creation" do
  before(:each) do
    sign_up
  end  
  scenario "allows guest to create account" do
    
    visit new_contacts_path

    fill_in :contact_email, with: 'admin@gmail.com'
    fill_in :contact_message, with: 'admin@gmail.com'

    click_button('Отправить сообщение')
    expect(page).to have_content 'Thank you'
  end
  
end
