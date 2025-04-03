# typed: false
# frozen_string_literal: true

class Decodable < Formula
  desc "Manage Decodable resources from the CLI"
  homepage "https://www.decodable.co/"
  version "1.20.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://releases.decodable.co/decodable-cli/darwin/amd64/decodable-cli-darwin-amd64-1.20.4.tar.gz"
      sha256 "0fdc2e7092ae6943029a658f1772067dfa9cfb1c998a73f7bf6135c4af9e31c8"

      def install
        bin.install "bin/decodable"
      end
    end
    if Hardware::CPU.arm?
      url "https://releases.decodable.co/decodable-cli/darwin/arm64/decodable-cli-darwin-arm64-1.20.4.tar.gz"
      sha256 "527f0c58b8e8ddb38b1a89bfb07615dcf08a6ffdaeef41df36b76dd9ee120484"

      def install
        bin.install "bin/decodable"
      end
    end
  end

  # on_linux do
  #   if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
  #     # TODO
  #   end
  #   if Hardware::CPU.intel?
  #     # TODO
  #   end
  # end

  def caveats
    <<~EOS
      Thanks for installing the Decodable CLI
    EOS
  end
end
