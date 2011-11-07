class IdeasController < ApplicationController
  
  def index
    @ideas = Idea.all
  end
  
  def new
    @idea = Idea.new
  end
  
  def create
    @idea = Idea.new(params[:idea])
    if @idea.save
      redirect_to root_url, :notice => "Ideia adicionada com sucesso!"
    else
      render "new"
    end
  end
end
