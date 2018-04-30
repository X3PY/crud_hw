class HomeController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
  end

  def create
    @post=Post.new  #왜 대문자? 대문자가 앞에면 모델이다. 공간을 만드는 명령어?
    # 첫번째 줄을 준비시킨다고 볼수있다. 
    @post.title=params[:title] # 변수에다 정보를 넣는과정.. 
    @post.content=params[:content] #이것도..
    @post.save #위에 쓴 정보들을 저장하라는 명령어. 이때 id도 주어진다.
    
    redirect_to '/' # 어딘가로 다시 되돌아가게 만들어주는 명령어..
  end
  
  def show
    @post = Post.find(params[:post_id])
  end

  def destroy
    @post=Post.find(params[:post_id]) #액션 내부에서 모든 작업이 끝나기때문에 html파일이 필요하지않다.
    @post.destroy
    
    redirect_to '/'
  end

  def edit
    @post=Post.find(params[:post_id])
  end

  def update
    @post=Post.find(params[:post_id])
    @post.title=params[:title]  
    @post.content=params[:content]
    @post.save

    redirect_to '/'
  end

end
