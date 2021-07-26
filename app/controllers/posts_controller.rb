class PostsController < ApplicationController
  def index
        @posts = Post.all
  end
    # ここより下の各アクションを追加しましょう
      def new
        @post = Post.new
      end
 
      def create
       @post = Post.new(params.require(:post).permit(:title, :start, :end, :allday, :memo))
      if @post.save
        flash[:notice] = "スケジュールを新規登録しました"
        redirect_to :posts
      else
        render "new"
      end
      end
 
      def show
        @post = Post.find(params[:id])
      end
 
      def edit
        @post = Post.find(params[:id])
      end
 
    def update
       @post = Post.find(params[:id])
      if @post.update(params.require(:post).permit(:title, :start, :end, :allday, :memo))
        flash[:notice] = "「#{@post.id}」の情報を更新しました"
        redirect_to :posts
      else
        render "edit"
      end
    end
 
  def destroy
      @post = Post.find(params[:id])
      @post.destroy
      flash[:notice] = "スケジュールを削除しました"
      redirect_to :posts

  end
end

