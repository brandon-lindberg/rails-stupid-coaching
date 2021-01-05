class QuestionsController < ApplicationController
  def answer
    @question = params[:question]
    @answer = if @question == ''
                'Please ask a question'
              elsif @question.end_with?('?')
                'Silly question, get dressed and go to work!'
              elsif @question.downcase == 'I am going to Work'.downcase
                'Great!'
              else
                'I dont` care, get dressed and go to work!'
              end
  end
end
