class Client::RecipesController < ApplicationController
  def index
    response = HTTP.get("http://localhost:3000/api/recipes")
    @recipes = response.parse
    render 'index.html.erb'
  end

  def show
    # @recipe = Recipe.find(params[:id])

    response = HTTP.get("http://localhost:3000/api/recipes/#{params[:id]}")
    @recipe = response.parse
    render 'show.html.erb'
  end
end
