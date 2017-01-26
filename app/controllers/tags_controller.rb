class TagsController < ApplicationController

	def show
	  @tag = Tag.find(params[:id])
	end

	def index
		@tags = Tag.all
	end

	def new
		@tag = Tag.new
	end

	def create 
		@tag = Tag.new(:tag_list)
	end

	  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tag
      @tag = Tag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tag_params
      params.require(:tag_list).permit(:tag_list)
    end
end