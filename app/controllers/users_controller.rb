class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
    @questions = Question.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
    render :layout => 'users_show'
  end

  # GET /users/new
  def new
    @user = User.new
    @questions = Question.all
    @questions.each_with_index do |question,i|
      if question then
      logger.debug question.name
      answer = Answer.new
      @user.answers << answer
      end
    end
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    @user.A=0.0
    @user.B=0.0
    @user.C=0.0
    @user.D=0.0
    a=0
    b=0
    c=0
    d=0
    @user.answers.each do |answer|
      case(answer.question.kind)
      when 1 then
        a+=1
        @user.A += answer.value * answer.question.aspect
      when 2 then
        b+=1
        @user.B += answer.value * answer.question.aspect
      when 3 then
        c+=1
        @user.C += answer.value * answer.question.aspect
      when 4 then
        d+=1
        @user.D += answer.value * answer.question.aspect
      end
    end
        @user.A = (@user.A.to_f/a).round(1)
        @user.B = (@user.B.to_f/b).round(1)
        @user.C = (@user.C.to_f/c).round(1)
        @user.D = (@user.D.to_f/d).round(1)
        @user.ideology = Ideology.judge(@user.A,@user.B,@user.C,@user.D).first
        @user.element = Element.judge(@user.C,@user.D).first
        @user.temper = Temper.judge(@user.A,@user.B).first
        @user.devil = Devil.judge(@user.A,@user.B,@user.C,@user.D).first
   respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :A, :B, :C, :D,answers_attributes: [:question_id,:value] )
    end
end
