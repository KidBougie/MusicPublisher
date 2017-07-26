class SiteController < ApplicationController
  # def search
    # @results = Artist.where name: params[:term]
    # @results = Artist.where("name LIKE ?", "%" + params[:term].to_s + "%")

    # artists = Artist.where("name LIKE ?", "%#{params[:term]}%")
    # labels = Label.where("name LIKE ?", "%#{params[:term]}%")
    # albums = Album.where("name LIKE ?", "%#{params[:term]}%")

    #^^^^#refactored
    # @results = []
    # [Artist, Album, Label].each do |model|
    #   @results += model.where("name LIKE ?", "%#{params[:term]}%")

    #^^^^#refactored
    # @results = [Artist, Album, Label].map do |model|
    #   model.where("name LIKE ?", "%#{params[:term]}%")

      #^^^^#refactored

      #added module/Concern

    #   term = params[:term]
    #   return if term.blank?
    #
    #   @results = [Artist, Album, Label].map do |model|
    #     model.search(params[:term])
    # end.flatten
    #flattens arrays within arrays or 2d arrays/kills nesting inside
#   end
# end


def search
  term = params[:term]
  return if term.blank? # matches nil and ""

  @results = []
  [Artist, Album, Label].each do |model|
    @results += model.search term
  end
end
end
