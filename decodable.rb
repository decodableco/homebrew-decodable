# typed: false
# frozen_string_literal: true

class Decodable < Formula
  desc "Manage Decodable resources from the CLI"
  homepage "https://www.decodable.co/"
  version "1.7.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://releases.decodable.co/decodable-cli/darwin/amd64/decodable-cli-darwin-amd64-1.7.0.tar.gz"
      sha256 "3334a1843774a2572ff237c20949894bc41364351775d0ef468faf25de90f38b"

      def install
        bin.install "bin/decodable"
      end
    end
    if Hardware::CPU.arm?
      url "https://releases.decodable.co/decodable-cli/darwin/arm64/decodable-cli-darwin-arm64-1.7.0.tar.gz"
      sha256 "3a789d06dfd7750684bc133ea9bc5954eb576e84dc940da664ee9126cc2cb102"

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
