module Response
  def json_response(object = {}, status = :ok)
    render json: {
      status: 200,
      response: true,
      data: nil,
      message: nil,
      errorMessage: nil
    }.merge(object), status: status
  end

  #   def json_response_empty(object = {}, status = :ok)
  #     render json: {}.merge(object), status: status
  #   end
end
