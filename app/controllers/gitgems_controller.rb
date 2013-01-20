class GitgemsController < ApplicationController
  before_filter :authenticate_user!
  # GET /gitgems
  # GET /gitgems.json
  def index
    @gitgems = Gitgem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @gitgems }
    end
  end

  # GET /gitgems/1
  # GET /gitgems/1.json
  def show
    @gitgem = Gitgem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @gitgem }
    end
  end

  # GET /gitgems/new
  # GET /gitgems/new.json
  def new
    @gitgem = Gitgem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @gitgem }
    end
  end

  # GET /gitgems/1/edit
  def edit
    @gitgem = Gitgem.find(params[:id])
  end

  # POST /gitgems
  # POST /gitgems.json
  def create
    @gitgem = Gitgem.new(params[:gitgem])

    respond_to do |format|
      if @gitgem.save
        format.html { redirect_to @gitgem, notice: 'Gitgem was successfully created.' }
        format.json { render json: @gitgem, status: :created, location: @gitgem }
      else
        format.html { render action: "new" }
        format.json { render json: @gitgem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /gitgems/1
  # PUT /gitgems/1.json
  def update
    @gitgem = Gitgem.find(params[:id])

    respond_to do |format|
      if @gitgem.update_attributes(params[:gitgem])
        format.html { redirect_to @gitgem, notice: 'Gitgem was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @gitgem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gitgems/1
  # DELETE /gitgems/1.json
  def destroy
    @gitgem = Gitgem.find(params[:id])
    @gitgem.destroy

    respond_to do |format|
      format.html { redirect_to gitgems_url }
      format.json { head :no_content }
    end
  end
end
