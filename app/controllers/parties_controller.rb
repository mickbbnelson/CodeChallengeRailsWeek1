class PartiesController < ApplicationController

    def index
        @parties = Party.parties   
    end

    def show
        @party = Party.find_by_id(params[:id])
    end

end