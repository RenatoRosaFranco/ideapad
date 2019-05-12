# frozen_string_literal: true
class IdeasController < ApplicationController
  before_action :authenticate_user!
  before_action :set_idea,   only: [:show, :edit, :update, :destroy]
  before_action :is_author?, only: [:edit, :update, :destroy]

  def index
    @ideas = Idea.all
    respond_with @idea
  end

  def new
    @idea = Idea.new
    respond_with @idea
  end

  def create
    @idea = current_user.ideas.create(idea_params)
    respond_with @idea
  end

  def show
    respond_with @idea
  end

  def edit
    respond_with @idea
  end

  def update
    @idea.update(idea_params)
    respond_with @idea
  end

  def destroy
    @idea.destroy
    respond_with @idea
  end

  private

  def set_idea
    @idea = Idea.find(params[:id])
  end

  def is_author?
    if @idea.user != current_user
      redirect_to ideas_path, notice: 'Você não pode editar essa idea.'
    end
  end

  def idea_params
    params.require(:idea)
      .permit(:name, :description)
  end
end
