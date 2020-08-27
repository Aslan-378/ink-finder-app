class QuizzesController < ApplicationController

  skip_before_action :authenticate_user!, only: [:new, :create, :show]

  def new
    @quiz = Quiz.new
    authorize @quiz
  end

  def create
    @quiz = Quiz.new(quiz_params)
    @quiz.user = current_user
    authorize @quiz
    if @quiz.save
      redirect_to users_path(style: @quiz.style)
    else
      render :new
    end
  end

  def show
    @quiz = Quiz.find(params[:id])
    authorize @quiz
  end

  private

  def quiz_params
    params.require(:quiz).permit(:style, :meaning, :category, :representation)

  end
end

