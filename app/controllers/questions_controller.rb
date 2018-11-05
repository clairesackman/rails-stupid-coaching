class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:your_question]
    if @question == "I am going to work"
      @answer = "Great work!"
    elsif @question.ends_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end

# Why are dealing with instance variables and classes?
