# frozen_string_literal: true

RSpec.describe DNSTwister::API, :vcr do
  subject { described_class.new }

  let(:domain) { "example.com" }

  describe "#fuzz" do
    it do
      res = subject.fuzz(domain)
      expect(res).to be_a(Hash)
    end
  end

  describe "#safebrowsing" do
    it do
      res = subject.safebrowsing(domain)
      expect(res).to be_a(Hash)
    end
  end

  describe "#ip" do
    it do
      res = subject.ip(domain)
      expect(res).to be_a(Hash)
    end
  end

  describe "#parked" do
    it do
      res = subject.parked(domain)
      expect(res).to be_a(Hash)
    end
  end

  describe "#whois" do
    it do
      res = subject.whois(domain)
      expect(res).to be_a(Hash)
    end
  end

  context "when given an invalid input" do
    it do
      expect { subject.ip("foo") }.to raise_error(DNSTwister::Error, /Malformed domain or domain not represented in hexadecimal format/)
    end
  end
end
