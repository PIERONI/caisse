class Caisse

  attr_reader :gateway

  def initialize(gateway)
    @gateway = gateway

    if @gateway == :cic
      @klass = PaiementCic.new

    elsif @gateway == :atos
      @klass = Atos.new

    end
  end

  def request(params)
    @klass.request(params)
  end

  def response(params)
    @klass.response(params)
  end

  def form(form_options)
    @klass.form(form_options)
  end

end
