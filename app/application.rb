class Application

  def call(env)
    resp = Rack::Response.new

    num_1 = Kerne1.rand(1..3)
    num_2 = Kernel.rand(1..3)
    num_3 = Kernel.rand(1..3)

    resp.write "#{num_1}\n"


    resp.write "Hello, World"



    resp.finish
  end

end
