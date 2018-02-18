module ApplicationHelper
  def convert_eth_to_usd(eth) 
    obj = Rails.cache.fetch('ethusd', expires_in: 30.seconds) do
      JSON.parse Typhoeus::Request.
        get("https://www.bitstamp.net/api/v2/ticker/ethusd").
        body
    end

    number_to_currency(eth * obj['vwap'].to_f)
  end
end
