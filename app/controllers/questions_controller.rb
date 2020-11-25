class QuestionsController < ApplicationController

attr_reader :coached_question

  def ask
    @coached_question = params[:coached_question]
  end

  def answer
    @coached_question = params[:coached_question]
    if @coached_question.include?('?')
      @coach_answer = 'Silly Question, get dressed and go to work!'
    elsif @coached_question == 'I am going to work'
      @coach_answer = 'Great!'
    else
      @coach_answer = "I don't care, get dressed and go to work!"
    end
  end

end
