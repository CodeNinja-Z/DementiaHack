class CliniciansController < ApplicationController
  before_action :set_clinician, only: [:show, :edit, :update, :destroy]

  # GET /clinicians
  # GET /clinicians.json
  def index
    @clinicians = Clinician.all
  end

  # GET /clinicians/1
  # GET /clinicians/1.json
  def show
  end

  # GET /clinicians/new
  def new
    @clinician = Clinician.new
  end

  # GET /clinicians/1/edit
  def edit
  end

  # POST /clinicians
  # POST /clinicians.json
  def create
    @clinician = Clinician.new(clinician_params)
    @user_finder = User.find_by_email(params[:email])

    respond_to do |format|
      if @user_finder.nil?
        @clinician.save
        User.create(email: params[:email], password: params[:password], password_confirmation: params[:password], profile: @clinician)
        format.html { redirect_to @clinician, notice: 'clinician was successfully created.' }
        format.json { render :show, status: :created, location: @clinician }
      else
        format.html { render :new, alert: 'That email is already registered to a user.' }
        format.json { render json: @clinician.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clinicians/1
  # PATCH/PUT /clinicians/1.json
  def update
    respond_to do |format|
      if @clinician.update(clinician_params)
        format.html { redirect_to @clinician, notice: 'Clinician was successfully updated.' }
        format.json { render :show, status: :ok, location: @clinician }
      else
        format.html { render :edit }
        format.json { render json: @clinician.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clinicians/1
  # DELETE /clinicians/1.json
  def destroy
    @clinician.destroy
    respond_to do |format|
      format.html { redirect_to clinicians_url, notice: 'Clinician was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clinician
      @clinician = Clinician.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clinician_params
      params.require(:clinician).permit(:first_name, :last_name)
    end
end
