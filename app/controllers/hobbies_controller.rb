class HobbiesController < ApplicationController
  # GET /hobbies
  # GET /hobbies.json
  def index
    @hobbies = Hobby.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hobbies }
    end
  end

  # GET /hobbies/1
  # GET /hobbies/1.json
  def show
    @hobby = Hobby.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hobby }
    end
  end

  # GET /hobbies/new
  # GET /hobbies/new.json
  def new
    @hobby = Hobby.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hobby }
    end
  end

  # GET /hobbies/1/edit
  def edit
    @hobby = Hobby.find(params[:id])
  end

  # POST /hobbies
  # POST /hobbies.json
  def create
    @hobby = Hobby.new(params[:hobby])

    respond_to do |format|
      if @hobby.save
        format.html { redirect_to @hobby, notice: 'Hobby was successfully created.' }
        format.json { render json: @hobby, status: :created, location: @hobby }
      else
        format.html { render action: "new" }
        format.json { render json: @hobby.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hobbies/1
  # PUT /hobbies/1.json
  def update
    @hobby = Hobby.find(params[:id])

    respond_to do |format|
      if @hobby.update_attributes(params[:hobby])
        format.html { redirect_to @hobby, notice: 'Hobby was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @hobby.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hobbies/1
  # DELETE /hobbies/1.json
  def destroy
    @hobby = Hobby.find(params[:id])
    @hobby.destroy

    respond_to do |format|
      format.html { redirect_to hobbies_url }
      format.json { head :ok }
    end
  end
end
