class LinksController < ApplicationController
   before_filter :authenticate_user!
  def index
     @links = Link.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @links }
    end
  end

  def show
  end

  def new
     @link = Link.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @link }
    end
  end

  def edit
  end

#  def create
#
#  @question = Question.new(params[:question])
#  @question.user_id = current_user.id
#  if @question.save
#    redirect_to questions_path, :notice => "Successfully created question."
#  else
#    setup_questions
#    render :index
#  end
#
#end


  def create
     @link = Link.new(params[:link])

    #mirar todo esto de abajo, respuesta al form
      respond_to do |format|
      if @link.save
        format.html { redirect_to @link, notice: 'link was successfully created.' }
        format.json { render json: @link, status: :created, location: @link }
      else
        format.html { render action: "new" }
        format.json { render json: @link.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
  end
end
