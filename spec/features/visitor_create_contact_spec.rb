require "rails_helper"


feature "Contact creation" do

    scenario "allows access to contacts page" do
      visit new_contacts_path
      
  
      expect(page).to have_content  I18n.t 'contacts.contact_us'
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

def sign_up
  visit new_user_registration_path

  fill_in :user_email, with: 'popo@gmail.com'
  fill_in :user_username, with: 'Popo'
  fill_in :user_password, with: 'qwerty'
  fill_in :user_password_confirmation, with: 'qwerty'

  click_button 'Sign up'
end  