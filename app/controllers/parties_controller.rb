class PartiesController < ApplicationController

    def index
        @parties = Party.parties
        
    end
end