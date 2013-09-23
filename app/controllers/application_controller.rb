class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def backbone_responder &block
    respond_to do |format|
      format.html do
        render inline: '', layout: 'application'
      end
      format.json { yield } if block_given?
    end
  end
end
