 class PostController < ApplicationController
      def index
        @posts = Post.all
      end
    # ここより下の各アクションを追加しましょう
      def new
        @post = Post.new
      end
 
      def create
      end
 
      def show
      end
 
      def edit
      end
 
      def update
      end
 
      def destroy
      end
    end