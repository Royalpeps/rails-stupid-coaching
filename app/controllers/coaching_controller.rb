class CoachingController < ApplicationController
  def ask
  end

  def answer
    if params[:query]
      @query = params[:query]

      if @query.split("").last == "?"
        @answer = "Silly question, get dressed and go to work!"
      elsif @query == "I am going to work right now!"
        @answer = ""
      else
        @answer = "I don't care, get dressed and go to work!"
      end

    end
  end
end
