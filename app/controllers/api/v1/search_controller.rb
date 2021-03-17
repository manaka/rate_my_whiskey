class Api::V1::SearchController < Api::V1::BaseController
  def index
    @whiskeys = if params[:q].blank?
                  Whiskey.includes(:scores).all
                else
                  Whiskey.includes(:scores).search(params[:q]).all
                end

    # respond_to do |format|
    #   format.json { render json: @whiskeys.as_json(include: [:scores]) }
    # end
  end
end
