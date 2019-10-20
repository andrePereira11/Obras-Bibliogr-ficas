class Api::V1::AuthorsController < Api::V1::ApiController
  def create
    byebug
    names = params[:names]

    #if @authors.save!
      #render json:@authors, status:201
    #end
  end

  private

  def convert(names)
    names.each do |name|
      name.split(" ")
    end
  end

end
