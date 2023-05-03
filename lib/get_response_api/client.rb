module GetResponseApi
  class Client
    def initialize(api_key)
      @connection = Connection.new(api_key)
    end

    def account
      @connection.request(:get, '/accounts')
    end

    def campaigns(page: 1, per_page: 250)
      @connection.request(:get, "/campaigns?page=#{page}&perPage=#{per_page}")
    end

    def custom_fields
      @connection.request(:get, '/custom-fields')
    end

    def contacts(per_page: 1000)
      @connection.request(:get, "/contacts?perPage=#{per_page}")
    end
  end
end
