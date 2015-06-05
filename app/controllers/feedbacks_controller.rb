class FeedbacksController < ApplicationController

    def show
        
    end

    def new
        @feedback = Feedback.new
    end

    def create
        @feedback = Feedback.new(feedback_params)

        if @feedback.save
            redirect_to root_path, notice: "Thanks for talking to us."
        else
            render 'new'
        end
    end


    private

    def feedback_params
        params.require(:feedback).permit(:title, :description)
    end

end
