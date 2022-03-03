require 'json'
class CoursesController < ApplicationController
  def index

    @file = File.read("./config/courses.json")
    @courses = JSON.parse(@file)

  end

  def show
  end

  def new
  end

  def edit
  end

  def search
    #@courses=Course.where("lower(name) LIKE ?", "%" + params[:q].downcase + "%")
    @file = File.read("./config/courses.json")
    @array = JSON.parse(@file)
    # @courses = @array.select{|a| a[:name] == params[:q].downcase}
    str= params[:q].downcase
    @courses = []
    @array.each do |arr|
      if arr['name'].downcase.include?(str)
        @courses.push(arr)
      elsif arr['description'].downcase.include?(str)
        @courses.push(arr)
      elsif arr['writer'].downcase.include?(str)
        @courses.push(arr)
      end
    end
    puts @courses
    if @courses == nil
      @courses = @array
    end
    
  end
end
