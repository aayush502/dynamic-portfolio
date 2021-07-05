class HomeController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index
        
    end

    def save_info
        @info = Info.new
        @info.name = params[:name]
        @info.email = params[:email]
        @info.subject = params[:subject]
        @info.message = params[:message]
        @info.save!
        UserMailer.sample_email().deliver
    end

    def download
        pdf = WickedPdf.new.pdf_from_string(            
            render_to_string('download', layout: false))  
        send_data(pdf,                                  
            filename: 'download.pdf',                     
            type: 'application/pdf',                      
            disposition: 'attachment')     
    end
end