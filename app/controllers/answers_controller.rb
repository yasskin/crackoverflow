class AnswersController < ApplicationController

  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.new(answer_params)
    @answer.user = User.find(session[:user_id])

    if @answer.save
      flash[:notice] = "Answer successfully saved"
      redirect_to question_path(@question)
    else
      redirect_to question_path(@question)
    end
  end

  def edit
    @question = Question.find(params[:question_id])
    @answer = Answer.find(params[:id])
  end

  def update
    @answer = Answer.find(params[:id])
    @question = @answer.question
    if @answer.update(answer_params)
      flash[:notice] = "updated"
      redirect_to question_path(@question)
    else
      flash[:danger] = "fail"
      render :edit
    end
  end

private
  def answer_params
    params.require(:answer).permit(:response)
  end

end
