class QuestionsController < ApplicationController

  def ask

  end

  def answer
    @client_answer = params[:question]

    @client_answer.empty? ? @client_answer = "ask something ?" : @client_answer

    if @client_answer == "I am going to work"
      @result = "Great!"
    elsif @client_answer.include? "?"
      @result = "Silly question, get dressed and go to work!"
    else
      @result = "I don't care, get dressed and go to work!"
    end
  end
end
