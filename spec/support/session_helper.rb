def sign_up
  visit new_user_registration_path

  fill_in :user_email, with: 'popolo@gmail.com'
  fill_in :user_username, with: 'Popolo'
  fill_in :user_password, with: 'qwerty'
  fill_in :user_password_confirmation, with: 'qwerty'

  click_button('Sign up')
  expect(page).to have_content I18n.t('devise.registrations.signed_up')
end  

def create_new_article
  visit new_article_path

  fill_in :article_title, with: 'Hello!'
  fill_in :article_text, with: 'Hello user'

  click_button('Опубликовать')
end  