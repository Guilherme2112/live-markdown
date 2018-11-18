class DocumentsController < ApplicationController
  def index
  end

  def new
    @document = Document.create!
    redirect_to document_path(@document)
  end

  def show
    @document = Document.find(params[:id])
  end

  def upsert
  end
end
