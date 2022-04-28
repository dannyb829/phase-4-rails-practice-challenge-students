class ApplicationController < ActionController::API
    rescue_from ActiveRecord::RecordNotFound, with: :error_processing_request
    rescue_from ActiveRecord::RecordInvalid, with: :error_processing_request
    
    private

    def error_processing_request(invalid)
        render json: {error: invalid}
    end
    
end
