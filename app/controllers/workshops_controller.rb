class WorkshopsController < ApplicationController
  # GET /workshops
  # GET /workshops.json
  def index
    @workshops = Workshop.all
    @workshopsList = @workshops.collect { |workshop| workshop.name}
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @workshopsList, callback: params[:callback] }
    end
  end

  # GET /workshops/1
  # GET /workshops/1.json
  def show
    @workshop = Workshop.find_by_name(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @workshop, callback: params[:callback]}
    end
  end

  # GET /workshops/new
  # GET /workshops/new.json
  def new
    @workshop = Workshop.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @workshop }
    end
  end

  # GET /workshops/1/edit
  def edit
    @workshop = Workshop.find_by_name(params[:id])
  end

  # POST /workshops
  # POST /workshops.json
  def create
    @workshop = Workshop.new(params[:workshop])

    respond_to do |format|
      if @workshop.save
        format.html { redirect_to @workshop, notice: 'Workshop was successfully created.' }
        format.json { render json: @workshop, status: :created, location: @workshop }
      else
        format.html { render action: "new" }
        format.json { render json: @workshop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /workshops/1
  # PUT /workshops/1.json
  def update
    @workshop = Workshop.find_by_name(params[:id])

    respond_to do |format|
      if @workshop.update_attributes(params[:workshop])
        format.html { redirect_to @workshop, notice: 'Workshop was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @workshop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workshops/1
  # DELETE /workshops/1.json
  def destroy
    @workshop = Workshop.find_by_name(params[:id])
    @workshop.destroy

    respond_to do |format|
      format.html { redirect_to workshops_url }
      format.json { head :no_content }
    end
  end
end