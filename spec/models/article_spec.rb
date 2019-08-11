require 'rails_helper'

RSpec.describe Article, type: :model do
  describe "associations" do
    it { should have_many(:comments).dependent(:destroy) }
  end 
  describe "validations" do 
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:text) }
  end
  describe "#subject" do
    it "returns the article title" do
      # создаем обьект хитрым способом
      article = create(:article, title: "Lorem Ipsum")
      # проверка
      expect(article.subject).to eq "Lorem Ipsum"
    end  
  end  
end
