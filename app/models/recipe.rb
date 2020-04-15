class Recipe < ActiveRecord::Base
  has_many :ingredients 
  accepts_nested_attributes_for :ingredients

  # def recipe_title=(title)
  #   self.title = Title.find_or_create_by(title: title)
  # end

  # def recipe_title
  #   title.try(:title)    
  # end

  def ingredient_attributes=(ingredient_attribute)
    self.ingredient = Ingredient.find_or_create_by(name: ingredient_attribute)
    self.ingredient.update(ingredient_attribute)    
  end
end
