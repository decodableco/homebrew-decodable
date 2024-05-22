# typed: false
# frozen_string_literal: true

class Decodable < Formula
  desc "Manage Decodable resources from the CLI"
  homepage "https://www.decodable.co/"
  version "1.15.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://releases.decodable.co/decodable-cli/darwin/amd64/decodable-cli-darwin-amd64-1.15.0.tar.gz"
      sha256 "fdc7177d7a16036abf0f436e3ba1353e381b06659e60c7e961812309fec92f8b"

      def install
        bin.install "bin/decodable"
      end
    end
    if Hardware::CPU.arm?
      url "https://releases.decodable.co/decodable-cli/darwin/arm64/decodable-cli-darwin-arm64-1.15.0.tar.gz"
      sha256 "ea0e6b1800b2480443d7f51a2d7da7db49dd4bf58bd5d30fe0cbca345353b2a9"

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
