class NewsController < ApplicationController

    def index
        @news = News.all.order("created_at DESC")
    end

    def new
        @news = News.new
    end

    def create
        @news = News.new(news_params)

        if @news.save
            redirect_to news_path, notice: "Thanks for your support."
        else
            render 'new'
        end
    end


    private

    def news_params
        params.require(:news).permit(:title, :link)
    end

end
