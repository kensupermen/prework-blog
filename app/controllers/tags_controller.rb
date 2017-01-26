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
		@tag = Tag.new(params[:tag_list])
	end

	
end