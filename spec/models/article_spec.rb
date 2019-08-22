require 'rails_helper'

RSpec.describe Article, type: :model do
  describe "associations" do
    it { should have_many(:comments).dependent(:destroy) }
  end 
  describe "validations" do 
    it { should validate_length_of(:title).is_at_most(140) }
    it { should validate_length_of(:text).is_at_most(4000) }
  end
  describe "#subject" do
    it "returns the article title" do
      # создаем обьект хитрым способом
      article = create(:article, title: "Lorem Ipsum")
      # проверка
      expect(article.subject).to eq "Lorem Ipsum"
    end  
  end
  
  describe "#last_comment" do
    it "returns the last comment" do
       # создаём статью с 3 комментариями
       article = create(:article_with_comments)

       # проверка
       expect(article.last_comment.body).to eq "Comment body 1"
    end
  end
end
