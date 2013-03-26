class IllustsController < ApplicationController
  # GET /illusts
  # GET /illusts.json
  def index
    @illusts = Illust.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @illusts }
    end
  end

  # GET /illusts/1
  # GET /illusts/1.json
  def show
    @illust = Illust.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @illust }
    end
  end

  # GET /illusts/new
  # GET /illusts/new.json
  def new
    @illust = Illust.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @illust }
    end
  end

  # GET /illusts/1/edit
  def edit
    @illust = Illust.find(params[:id])
  end

  # POST /illusts
  # POST /illusts.json
  def create
    @illust = Illust.new(params[:illust])

    respond_to do |format|
      if @illust.save
        format.html { redirect_to @illust, notice: 'Illust was successfully created.' }
        format.json { render json: @illust, status: :created, location: @illust }
      else
        format.html { render action: "new" }
        format.json { render json: @illust.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /illusts/1
  # PUT /illusts/1.json
  def update
    @illust = Illust.find(params[:id])

    respond_to do |format|
      if @illust.update_attributes(params[:illust])
        format.html { redirect_to @illust, notice: 'Illust was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @illust.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /illusts/1
  # DELETE /illusts/1.json
  def destroy
    @illust = Illust.find(params[:id])
    @illust.destroy

    respond_to do |format|
      format.html { redirect_to illusts_url }
      format.json { head :no_content }
    end
  end
end
