class LibraryController < ApplicationController
  layout 'public'
  def index
    @artefacts = Artefact.find_all_by_published(true)
    @artefact = Artefact.first
  end  
end
