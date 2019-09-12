require "rails_helper"


feature "Comment Creation" do
  before(:each) do
    sign_up
    create_new_article
  end  
  scenario "allows user to new comment" do

    fill_in :comment_body, with: 'Hello!'
    
    click_button('Оставить комментарий')
    expect(page).to have_content 'Hello!'
  end
  
end 
