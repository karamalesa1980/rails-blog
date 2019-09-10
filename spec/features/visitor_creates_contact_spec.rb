require "rails_helper"
require "support/session_helper"

feature "Account Creation" do
  scenario "allows guest to create account" do
    sign_up
    expect(page).to have_content I18n.t('devise.registrations.signed_up')

    visit new_contacts_path
    fill_in :contact_email, with: 'admin@gmail.com'
    fill_in :contact_message, with: 'admin@gmail.com'

    click_button 'Отправить сообщение'
    
    expect(page).to have_content 'Thank you'
  end
  
end