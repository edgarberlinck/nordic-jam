class SearchController < ApplicationController
  def index
    @instruments = [ Instrument.new(name: "All", id: 0) ].concat(Instrument.all)
    @styles = [ Style.new(name: "All", id: 0) ].concat(Style.all)
    if search_params.present?
      # I don't want to show the current user's profile in the search results
      @results = Profile.where("profiles.id <> ?", Current.user.id)

      # Only filter by instrument if one is selected and not blank
      if search_params[:instrument].present? && search_params[:instrument] != "" && search_params[:instrument] != "0"
        @results = @results.joins(:profile_instruments)
                         .where(profile_instruments: { instrument_id: search_params[:instrument] })
      end

      # Only filter by style if one is selected and not blank
      if search_params[:style].present? && search_params[:style] != "" && search_params[:style] != "0"
        @results = @results.joins(:profile_styles)
                         .where(profile_styles: { style_id: search_params[:style] })
      end

      # Only filter by city if it's not blank
      if search_params[:city].present? && !search_params[:city].blank?
        @results = @results.where("LOWER(city) LIKE ?", "%#{search_params[:city].downcase}%")
      end

      # Only filter by state if it's not blank
      if search_params[:state].present? && !search_params[:state].blank?
        @results = @results.where("LOWER(state) LIKE ?", "%#{search_params[:state].downcase}%")
      end

      @results = @results.distinct
    else
      @results = Profile.all
    end
  end

  private

  def search_params
    params.permit(:city, :state, :instrument, :style)
  end
end
