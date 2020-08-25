class QuizzesController < ApplicationController

  skip_before_action :authenticate_user!, only: [ :new ]

  def new
    @quiz = Quiz.new
    authorize @quiz
  end
end

