# frozen_string_literal: true

module DNSTwister
  class API < Base
    #
    # Calculates the dnstwist "fuzzy domains" for a domain
    #
    # @param [String] domain
    #
    # @return [Hash]
    #
    def fuzz(domain)
      _get("/api/fuzz/#{to_hex(domain)}") { |json| json }
    end

    #
    # Returns number of hits in Google Safe Browsing
    #
    # @param [String] domain
    #
    # @return [Hash]
    #
    def safebrowsing(domain)
      _get("/api/safebrowsing/#{to_hex(domain)}") { |json| json }
    end

    #
    # Resolves Domains to IPs
    #
    # @param [String] domain
    #
    # @return [Hash]
    #
    def ip(domain)
      _get("/api/ip/#{to_hex(domain)}") { |json| json }
    end

    #
    # Calculates "parked" scores from 0-1
    #
    # @param [String] domain
    #
    # @return [Hash]
    #
    def parked(domain)
      _get("/api/parked/#{to_hex(domain)}") { |json| json }
    end

    #
    # Calculates the dnstwist "fuzzy domains" for a domain.
    #
    # @param [String] domain
    #
    # @return [Hash]
    #
    def whois(domain)
      _get("/api/whois/#{to_hex(domain)}") { |json| json }
    end

    private

    #
    # Converts string to hex
    #
    # @param [String] str String
    #
    # @return [String] Hex
    #
    def to_hex(str)
      str.each_byte.map { |b| b.to_s(16) }.join
    end
  end
end
