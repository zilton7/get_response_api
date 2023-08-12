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

    def contacts(page = 1, per_page = 100)
      @connection.request(:get, "/contacts?page=#{page}&perPage=#{per_page}")
    end

    def search_contacts(per_page = 100, payload)
      @connection.request(:post, "/search-contacts/contacts?perPage=#{per_page}", payload)
    end
  end
end
