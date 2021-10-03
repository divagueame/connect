# require './lib/connect.rb'

class Coffee 
  def initialize
    @price = 2.00
    @ingredients = []
  end
  
  def getPrice
    currentprice = @price +(@ingredients.length)*0.50
    # currentprice
  end

  def add(newIngredient)
    @ingredients << newIngredient
  end
  
end


describe 'A cup of coffee' do
  let(:coffee){ Coffee.new }

  it 'costs 1' do
    expect(coffee.getPrice).not_to eq(1.00) 
  end

  context 'with milk' do
    before {coffee.add('milk')}
    it 'costs 2.50' do
      
    expect(coffee.getPrice).to eq(2.50)
    end
  end
  
  
end
