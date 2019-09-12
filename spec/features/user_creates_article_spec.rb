require "rails_helper"


feature "Article Creation" do
  before(:each) do
    sign_up
  end  
  scenario "allows visit user to new article page" do
    
    expect(page).to have_content I18n.t('devise.registrations.signed_up')

    visit new_article_path
    
    
    expect(page).to have_content I18n.t('article.new_article')
  end
  
end 
