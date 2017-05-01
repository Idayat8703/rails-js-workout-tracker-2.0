class CommentsController < ApplicationController

  def index
    @comments = Meal.find(params[:meal_id]).comments
    render json: @comments
  end

  def create
    meal= Meal.find(params[:meal_id])
    @comment = meal.comments.new(comment_params)
    @comment.user = current_user
    @comment.save
    render json: @comment, status: 201
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :meal_id, :user_id)
  end

end
