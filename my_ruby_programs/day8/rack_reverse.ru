class RackReverse
  def call(env)
    req = Rack::Request.new(env)
    str = req.params['string']
    if str
      positive_response(str)
    else
      negative_response
    end
  end

  def positive_response(str)
    Rack::Response.new.finish do |res|
      res.status = 200
      res["Content-Type"] = "text/plain"
      res.write "The string you wrote is #{str}, that reversed become #{str.reverse}"
    end
  end

  def negative_response
    Rack::Response.new.finish do |res|
      res.status = 200
      res["Content-Type"] = "text/plain"
      res.write "The string is empty."
    end
  end

end

run RackReverse.new
