require 'rails_helper'

RSpec.describe Contact, type: :model do
  context "validation tests" do
    it "ensures email is present" do
      contact = Contact.new(email: "karamalesa@gmail.com")
      expect(contact.valid?).to eq(false)
    end

    it "ensures message is present" do
      contact = Contact.new(message: "Hello World!")
      expect(contact.valid?).to eq(false)

    end 

    it "should be adle to save contact" do
      contact = Contact.new(email: "karamalesa@gmail.com", message: "Hello World!")
      expect(contact.valid?).to eq(true)
      expect(contact.save).to eq(true)
    end 


  end  
end
