# typed: false
# frozen_string_literal: true

class Decodable < Formula
  desc "Manage Decodable resources from the CLI"
  homepage "https://www.decodable.co/"
  version "1.18.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://releases.decodable.co/decodable-cli/darwin/amd64/decodable-cli-darwin-amd64-1.18.0.tar.gz"
      sha256 "98108244653e4103559154392ef2668029f388c7665164257d605d9e52786e18"

      def install
        bin.install "bin/decodable"
      end
    end
    if Hardware::CPU.arm?
      url "https://releases.decodable.co/decodable-cli/darwin/arm64/decodable-cli-darwin-arm64-1.18.0.tar.gz"
      sha256 "b458b3ee3ee3a2a6f27315902f664d67b1d1fd4889a4479b59cee17b5287df43"

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
