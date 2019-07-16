require 'rails_helper'

RSpec.describe Product, type: :model do
  
  describe 'Validations' do
    @category = Category.new
    product1 = Product.new(name: "Any name", price: 1000, quantity: 15, category: @category)

    it "is valid with attributes" do
      expect(product1).to be_valid
    end

    it "is not valid without a name" do
      product1.name = nil
      expect(product1).to_not be_valid
    end

    it "is not valid without a quantity" do
      product1.quantity = nil
      expect(product1).to_not be_valid
    end
    
    it "is not valid without a category" do
      product1.category = nil
      expect(product1).to_not be_valid
    end
  end
end
