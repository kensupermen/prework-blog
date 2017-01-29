class TagsController < ApplicationController

	# before_action :set_tag, only: [:show, :edit, :update, :destroy]

	def show
	  @tag = Tag.find(params[:id])
	end

	def index
		@tags = Tag.all
	end
end