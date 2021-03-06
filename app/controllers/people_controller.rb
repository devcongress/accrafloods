class PeopleController < ApplicationController

    before_action :find_person, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!, except: [:index, :show]

    def show
        
    end

    def index
        @people = Person.all.order("created_at DESC")
    end

    def new
        @person = current_user.people.build
    end

    def create
        @person = current_user.people.build(person_params)

        if @person.save
            redirect_to @person, notice: "Successfully added missing person."
        else
            render 'new'
        end
    end

    def edit
        
    end

    def update
        if @person.update(person_params)
            redirect_to @person, notice: "Person's details have been updated."
        else
            render 'edit'
        end
    end

    def destroy
        @person.destroy
        redirect_to root_path
    end

    private

    def person_params
        params.require(:person).permit(:title, :description, :image)
    end

    def find_person
        @person = Person.find(params[:id]) 
    end
end
