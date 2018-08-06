class QuestionsController < ApplicationController
  ANSWERS = ["Great!","Silly question, get dressed and go to work!", "I don't care, get dressed and go to work!"]

  def ask
  end

  def answer
    if params[:question] == ""
      @answers = "Ask a real question!"
    elsif params[:question] == "I am going to work"
      @answers = ANSWERS[0]
    elsif 
      params[:question].include? "?"
      @answers = ANSWERS[1]
    else
      @answers = ANSWERS[2]
    end
  end
end
