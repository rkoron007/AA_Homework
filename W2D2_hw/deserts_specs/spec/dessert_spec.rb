require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef", name:"Pops") }
    subject(:brownie) { Dessert.new("brownie", 2, chef)}


  describe "#initialize" do

    it "sets a type" do
      expect(brownie.type).to eq('brownie')
    end

    it "sets a quantity" do
      expect(brownie.quantity).to eq(2)
    end

    it "starts ingredients as an empty array" do
      expect(brownie.ingredients).to eq([])
    end

    it "raises an argument error when given a non-integer quantity" do
    expect{ Dessert.new("brownie", "2", :chef)}. to raise_error
    end

  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      expect(brownie.add_ingredient("tomato")).to eq(["tomato"])
    end

  end

  describe "#mix!" do
    context 'lots of ingredients' do
      before(:each) do
        brownie.add_ingredient('potato')
        brownie.add_ingredient('chocolate')
        brownie.add_ingredient('water')
          it "shuffles the ingredient array" do
            expect(brownie.mix!).to eq(["potato, chocolate", "water"].shuffle)
        end
      end
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      expect(brownie.eat(1)).to eq(1)
    end


    it "raises an error if the amount is greater than the quantity" do
      expect{brownie.eat(3)}.to raise_error RuntimeError
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      allow(chef).to receive(:titleize).and_return("Chef Pops the Great Baker")
      expect(brownie.serve).to eq("Chef Pops the Great Baker has made 2 brownies!")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to receive(:bake).with(brownie)
      brownie.make_more
    end
  end
end
