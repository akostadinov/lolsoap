class LolSoap::WSDL
  class Element
    attr_reader :name

    def initialize(wsdl, name, type_name, singular = true)
      @wsdl      = wsdl
      @name      = name
      @type_name = type_name
      @singular  = singular
    end

    def type
      wsdl.type(@type_name.split(':').last)
    end

    def singular?
      @singular == true
    end

    private

    def wsdl; @wsdl; end
  end
end
