class QuestionsController < ApplicationController
  def answer
    @user_question = params[:query]
    @answer = coach_answer(@user_question)
  end

  def ask
  end

  private

  def coach_answer(message)
    if message.nil? != true
      if message.include?("?")
        return "Silly question, get dressed and go to work!"
      elsif message == "i am going to work right now!"
        return "awesome :)"
      else
        return "I don't care, get dressed and go to work!"
      end
    end
  end
end
