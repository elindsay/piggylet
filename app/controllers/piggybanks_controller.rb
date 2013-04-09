class PiggybanksController < ApplicationController
  def index
    @piggybanks = Piggybank.all
  end

  def show
    @piggybank = Piggybank.find(params[:id])
  end

  def new
    @piggybank = Piggybank.new
  end

  def create
    @piggybank = Piggybank.create(params[:piggybank])
    @piggybank.save
    redirect_to piggybanks_path
  end

  def edit
    @piggybank = Piggybank.find(params[:id])
  end

  def update
    @piggybank = Piggybank.find(params[:id])
    @piggybank.update_attributes(params[:piggybank])
    @piggybank.save
    redirect_to edit_piggybank_path(@piggybank)
  end
end
