class VotesController < ApplicationController
  before_action :set_question
  
  def yay
    vote = @question.votes.build
    vote.agreement = true
    vote.save

    redirect_to :back, :notice => "Thanks for your vote of yes."
  end

  def nay
    vote = @question.votes.build
    vote.agreement = false
    vote.save

    redirect_to :back, :notice => "Thanks for your vote of no."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
      @question = Question.find(params[:question_id])
    end
end
