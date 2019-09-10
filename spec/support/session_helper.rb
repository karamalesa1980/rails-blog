def sign_up
  visit new_user_registration_path

  fill_in :user_email, with: 'popolo@gmail.com'
  fill_in :user_username, with: 'Popolo'
  fill_in :user_password, with: 'qwerty'
  fill_in :user_password_confirmation, with: 'qwerty'

  click_button 'Sign up'
end  