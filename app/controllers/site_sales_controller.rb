class SiteSalesController < ApplicationController
  # GET /site_sales
  # GET /site_sales.json
  def index
    @site_sales = SiteSale.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @site_sales }
    end
  end

  # GET /site_sales/1
  # GET /site_sales/1.json
  def show
    @site_sale = SiteSale.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @site_sale }
    end
  end

  # GET /site_sales/new
  # GET /site_sales/new.json
  def new
    @site_sale = SiteSale.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @site_sale }
    end
  end

  # GET /site_sales/1/edit
  def edit
    @site_sale = SiteSale.find(params[:id])
  end

  # POST /site_sales
  # POST /site_sales.json
  def create
    @site_sale = SiteSale.new(params[:site_sale])

    respond_to do |format|
      if @site_sale.save
        format.html { redirect_to @site_sale, notice: 'Site sale was successfully created.' }
        format.json { render json: @site_sale, status: :created, location: @site_sale }
      else
        format.html { render action: "new" }
        format.json { render json: @site_sale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /site_sales/1
  # PUT /site_sales/1.json
  def update
    @site_sale = SiteSale.find(params[:id])

    respond_to do |format|
      if @site_sale.update_attributes(params[:site_sale])
        format.html { redirect_to @site_sale, notice: 'Site sale was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @site_sale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /site_sales/1
  # DELETE /site_sales/1.json
  def destroy
    @site_sale = SiteSale.find(params[:id])
    @site_sale.destroy

    respond_to do |format|
      format.html { redirect_to site_sales_url }
      format.json { head :no_content }
    end
  end
end
