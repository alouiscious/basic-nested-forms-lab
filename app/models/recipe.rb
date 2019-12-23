class Recipe < ActiveRecord::Base
  has_many :ingredients 
  accepts_nested_attributes_for :ingredients

  # def recipe_title=(title)
  #   self.title = Title.find_or_create_by(title: title)
  # end

  # def recipe_title
  #   title.try(:title)    
  # end

  # def ingredient_attributes=(ingredient)
  #   self.ingredient = Ingredient.find_or_create_by(name: artist[:name])
  #   self.ingredient.update(ingredient)    
  # end
end
