class Table2sController < ApplicationController
  # GET /table2s
  # GET /table2s.json
  def index
    @table2s = Table2.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @table2s }
    end
  end

  # GET /table2s/1
  # GET /table2s/1.json
  def show
    @table2 = Table2.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @table2 }
    end
  end

  # GET /table2s/new
  # GET /table2s/new.json
  def new
    @table2 = Table2.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @table2 }
    end
  end

  # GET /table2s/1/edit
  def edit
    @table2 = Table2.find(params[:id])
  end

  # POST /table2s
  # POST /table2s.json
  def create
    @table2 = Table2.new(params[:table2])

    respond_to do |format|
      if @table2.save
        format.html { redirect_to @table2, notice: 'Table2 was successfully created.' }
        format.json { render json: @table2, status: :created, location: @table2 }
      else
        format.html { render action: "new" }
        format.json { render json: @table2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /table2s/1
  # PUT /table2s/1.json
  def update
    @table2 = Table2.find(params[:id])

    respond_to do |format|
      if @table2.update_attributes(params[:table2])
        format.html { redirect_to @table2, notice: 'Table2 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @table2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /table2s/1
  # DELETE /table2s/1.json
  def destroy
    @table2 = Table2.find(params[:id])
    @table2.destroy

    respond_to do |format|
      format.html { redirect_to table2s_url }
      format.json { head :no_content }
    end
  end
end
