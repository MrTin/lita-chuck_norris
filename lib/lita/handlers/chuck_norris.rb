require 'lita'

module Lita
  module Handlers

    class ChuckNorrisError < StandardError; end
    class RequestError < ChuckNorrisError; end
    class UnknownAPIError < ChuckNorrisError; end

    class ChuckNorris < Handler

      route %r{^chuck$}i, :chuck, command: true, help: {
          'chuck' => 'Facts about Chuck Norris.'
        }

      def chuck(response)
        resp = http.get("http://api.icndb.com/jokes/random.json")
        raise RequestError unless resp.status == 200

        obj = MultiJson.load(resp.body)
        raise UnknownAPIError unless obj['type'] == 'success'

        response.reply obj['value']['joke']

      rescue => e
        Lita.logger.error("ChuckNorris#chucknorris raised #{e.class}: #{e.message}")
        response.reply "Chuck Norris has turned off the internetz, #{e.class} is raising '#{e.message}'"
      end


    end

    Lita.register_handler(ChuckNorris)
  end
end
