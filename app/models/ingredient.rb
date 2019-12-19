class Ingredient < ActiveRecord::Base
  belongs_to :recipe

  def ingredient_recipe=(recipe)
    self.recipe = Recipe.find_or_create_by(title: recipe[:title])
    self.recipe.update
  end 
end
