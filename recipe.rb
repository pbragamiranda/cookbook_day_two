class Recipe
  attr_reader :name, :description, :rating

  def initialize(name, description, rating)
    @name = name
    @description = description
    @rating = rating
  end
end

Recipe.new()


#   def initialize(attributes = {})
#     @name = attributes[:name]
#     @description = attributes[:description]
#     @rating = attributes[:rating]
#   end


# Recipe.new(rating: 4, name: 'Brigadeiro',
#             description: 'chocolat + condensed milk')
