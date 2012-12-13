class CookiesController < ApplicationController
  # GET /cookies
  # GET /cookies.json
  def index
    @cookies = Cookie.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cookies }
    end
  end

  # GET /cookies/1
  # GET /cookies/1.json
  def show
    @cooky = Cookie.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cooky }
    end
  end

  # GET /cookies/new
  # GET /cookies/new.json
  def new
    @cooky = Cookie.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cooky }
    end
  end

  # GET /cookies/1/edit
  def edit
    @cooky = Cookie.find(params[:id])
  end

  # POST /cookies
  # POST /cookies.json
  def create
    @cooky = Cookie.new(params[:cooky])

    respond_to do |format|
      if @cooky.save
        format.html { redirect_to @cooky, notice: 'Cookie was successfully created.' }
        format.json { render json: @cooky, status: :created, location: @cooky }
      else
        format.html { render action: "new" }
        format.json { render json: @cooky.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cookies/1
  # PUT /cookies/1.json
  def update
    @cooky = Cookie.find(params[:id])

    respond_to do |format|
      if @cooky.update_attributes(params[:cooky])
        format.html { redirect_to @cooky, notice: 'Cookie was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cooky.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cookies/1
  # DELETE /cookies/1.json
  def destroy
    @cooky = Cookie.find(params[:id])
    @cooky.destroy

    respond_to do |format|
      format.html { redirect_to cookies_url }
      format.json { head :no_content }
    end
  end
end
