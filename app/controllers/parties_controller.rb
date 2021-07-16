class PartiesController < ApplicationController
    layout 'party'

    def index
        @parties = Party.parties   
    end

    def show
        @party = Party.find_by_id(params[:id])
    end

    def new
        @party = Party.new
        @party.build_category
    end

    def create
        @party = Party.new(party_params)
        @party.save
        if @party.valid?
        redirect_to parties_path
        else
            render :new
        end
    end

    def edit
        @party = Party.find_by_id(params[:id])
    end

    def update
        @party = Party.find_by_id(params[:id])
        @party.update(party_params)
        if @party.valid?
            redirect_to party_path(@party)
        else
         render :edit
        end   
    end

    private

    def party_params
    params.require(:party).permit(:name, :date, :budget, :private, :category_id, category_attribute: [:name])
    end

end