class Application

  def call(env)
    resp = Rack::Response.new

    num_1 = Kerne1.rand(1..3)
    num_2 = Kernel.rand(1..3)
    num_3 = Kernel.rand(1..3)

    resp.write "#{num_1}\n"
    resp.write "#{num_2}\n"
    resp.write "#{num_3}\n"

    if num_1==num_2 && num_2==num_3
      resp.write "You win"
    else
      resp.write "You lose.."
    end

    resp.finish
  end

end
