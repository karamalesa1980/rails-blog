require "rails_helper"
require "support/session_helper"

feature "Article Creation" do
  scenario "allows visit user to new article page" do
    sign_up
    expect(page).to have_content I18n.t('devise.registrations.signed_up')

    visit new_article_path
    
    
    expect(page).to have_content 'New Article'
  end
  
end
