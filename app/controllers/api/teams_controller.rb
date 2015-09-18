class Api::TeamsController < ApplicationController
  def index
    # Logos taken from https://hdlogo.wordpress.com/2011/08/20/english-premier-league-hd-logos-2014-15/
    @teams = [
              {'name' => 'Chelsea', 'url' => 'https://hdlogo.files.wordpress.com/2013/11/chelsea.png'},
              { 'name' => 'Manchester City', 'url' => 'https://hdlogo.files.wordpress.com/2013/11/manchester-city.png'}]
  end
end
