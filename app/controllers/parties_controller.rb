class PartiesController < ApplicationController
    layout 'party'

    def index

        if params[:category_id]
            @category = Category.find(params[:category_id])
            @parties = @category.parties
        else
            @parties = Party.parties

        end
    end

    def show
       parties_finder 
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
        parties_finder
    end

    def update
        parties_finder
        @party.update(party_params)
        if @party.valid?
            redirect_to party_path(@party)
        else
         render :edit
        end   
    end

    private

    def party_params
    params.require(:party).permit(:name, :date, :budget, :private, :category_id, category_attributes: [:name])
    end

    def parties_finder
        @party = Party.find_by_id(params[:id])
    end

end