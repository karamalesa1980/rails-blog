require "rails_helper"


feature "Contact creation" do

    scenario "allows access to contacts page" do
      visit new_contacts_path
      
  
      expect(page).to have_content  I18n.t 'contacts.contact_us'
    end

    scenario "allows a guest to create contact" do


      visit new_user_session_path

      fill_in :user_email, with: 'polo@gmail.com'
      fill_in :user_password, with: 'qwerty'

      click_button 'Log in'
      expect(page).to have_content 'Log in :)'

      

      visit new_contacts_path
      fill_in :contact_email, with: 'admin@gmail.com'
      fill_in :contact_message, with: 'admin@gmail.com'
  
      click_button 'Отправить сообщение'
      
      expect(page).to have_content 'Log in :)'
    end
end