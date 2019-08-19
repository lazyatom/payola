module Payola
  class ApplicationController < ::ApplicationController
    class RedirectBackError < RuntimeError; end

    helper PriceHelper

    private

    def return_to
      return params[:return_to] if params[:return_to]
      request.headers["Referer"] or raise RedirectBackError
    end

  end
end
