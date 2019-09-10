def sign_up
  visit new_user_registration_path

  fill_in :user_email, with: 'popo@gmail.com'
  fill_in :user_username, with: 'Popo'
  fill_in :user_password, with: 'qwerty'
  fill_in :user_password_confirmation, with: 'qwerty'

  click_button 'Sign up'
end  