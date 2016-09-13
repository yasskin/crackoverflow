class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
    @answer = Answer.new
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    @question.user = User.find(session[:user_id]) if session[:user_id]
    if @question.save
      flash[:notice] = "New question successfully added"
      redirect_to questions_path
    else
      render :new
    end
  end

  def edit
    @question = Question.find(params[:id])
    render :edit
  end

  def update
    @question = Question.find(params[:id])
    if @question.user.id === session[:user_id] || session[:is_admin]
      if @question.update(question_params)
        flash[:notice] = "Question successfully updated!"
        redirect_to questions_path
      else
        render :edit
      end
    else
      flash[:notice] = "Buzz off! No permissions for you"
      render :edit
    end
  end

  def destroy
    @question = Question.find(params[:id])
    if session[:is_admin]
      @question.destroy
      flash[:notice] = "question successfully destroyed"
      redirect_to questions_path
    else
      flash[:notice] = "peon, you have no power to destroy questions!"
      redirect_to question_path(@question)
    end
  end

private
  def question_params
    params.require(:question).permit(:content)
  end

end
