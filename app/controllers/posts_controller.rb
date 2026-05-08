class PostsController < ApplicationController
  def new
    @post=Post.new
  end

  def create
  @post=current_user.posts.new(post_params)
  
  if @post.save
    redirect_to root_path, notice:"投稿しました"
  else
    flash.now[:alert]=@post.errors.full_messages.join(", ")
    render :new, status: :unprocessable_entity
  end
  end

  def edit
    @post=current_user.posts.find(params[:id])
  end

  def update
    @post=current_user.posts.find(params[:id])
    if @post.update(post_params)
      redirect_to root_path, notice:"投稿の内容を編集しました"
    else
      flash.now[:alert]=@post.errors.full_messages.join(",")
      render  :edit, status: :unprocessable_entity
    end
  end
    



  def destroy
    @post = current_user.posts.find(params[:id])
    redirect_to root_path, notice: "投稿を削除しました"
    @post.destroy
  end

  private

  def post_params
    params.require(:post).permit(:body_part_id,:exercise_name,:content)
  end
end
