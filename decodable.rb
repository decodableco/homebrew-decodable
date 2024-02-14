# typed: false
# frozen_string_literal: true

class Decodable < Formula
  desc "Manage Decodable resources from the CLI"
  homepage "https://www.decodable.co/"
  version "1.10.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://releases.decodable.co/decodable-cli/darwin/amd64/decodable-cli-darwin-amd64-1.10.0.tar.gz"
      sha256 "7a6874ba7ef4b2f29c1c35eb53963a44b2692ff30aae68e0ae08edbeb2362bd7"

      def install
        bin.install "bin/decodable"
      end
    end
    if Hardware::CPU.arm?
      url "https://releases.decodable.co/decodable-cli/darwin/arm64/decodable-cli-darwin-arm64-1.10.0.tar.gz"
      sha256 "f75a9c27f08cd4e04704fa007eb7d918b2fef88b16817ba46575c8c7e0f272ba"

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
