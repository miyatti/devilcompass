class IdeologiesController < ApplicationController
  before_action :set_ideology, only: [:show, :edit, :update, :destroy]

  # GET /ideologies
  # GET /ideologies.json
  def index
    @ideologies = Ideology.all
  end

  # GET /ideologies/1
  # GET /ideologies/1.json
  def show
  end

  # GET /ideologies/new
  def new
    @ideology = Ideology.new
  end

  # GET /ideologies/1/edit
  def edit
  end

  # POST /ideologies
  # POST /ideologies.json
  def create
    @ideology = Ideology.new(ideology_params)

    respond_to do |format|
      if @ideology.save
        format.html { redirect_to @ideology, notice: 'Ideology was successfully created.' }
        format.json { render :show, status: :created, location: @ideology }
      else
        format.html { render :new }
        format.json { render json: @ideology.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ideologies/1
  # PATCH/PUT /ideologies/1.json
  def update
    respond_to do |format|
      if @ideology.update(ideology_params)
        format.html { redirect_to @ideology, notice: 'Ideology was successfully updated.' }
        format.json { render :show, status: :ok, location: @ideology }
      else
        format.html { render :edit }
        format.json { render json: @ideology.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ideologies/1
  # DELETE /ideologies/1.json
  def destroy
    @ideology.destroy
    respond_to do |format|
      format.html { redirect_to ideologies_url, notice: 'Ideology was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ideology
      @ideology = Ideology.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ideology_params
      params.require(:ideology).permit(:name, :A, :B, :C, :D, :note, :NoteA, :NoteB, :NoteC, :NoteD)
    end
end
