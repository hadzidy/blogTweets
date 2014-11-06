class MapController < ApplicationController
  def index
  	@ubicaciones = Post.all
  end

  def view
  	@ubicacion = Post.find(params[:id])
  end
end
