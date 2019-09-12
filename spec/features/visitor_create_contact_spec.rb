require "rails_helper"



feature "Contact creation" do

    scenario "allows access to contacts page" do
      visit new_contacts_path
      
  
      expect(page).to have_content  I18n.t('contacts.contact_us')
    end

    scenario "allows a guest to create contact" do

      sign_up
     
      expect(page).to have_content I18n.t('devise.registrations.signed_up')

      

      visit new_contacts_path
      fill_in :contact_email, with: 'admin@gmail.com'
      fill_in :contact_message, with: 'admin@gmail.com'
  
      click_button 'Отправить сообщение'
      
      expect(page).to have_content 'Thank you'
    end
end

