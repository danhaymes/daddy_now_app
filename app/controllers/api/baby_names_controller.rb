class Api::BabyNamesController < ApplicationController
  def index
    names = File.readlines('yob2017.txt')
    @baby_names = names.map do |name|
      name.split(",").first
    end  
    render 'index.json.jbuilder'
  end
end
