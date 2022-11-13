# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Txtelite < Formula
  desc "TUI based implementation of the Elite trading engine"
  homepage "https://jgandrews.com/pages/textelite/"
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andrewsjg/GoElite/releases/download/v0.1.4/txtelite_0.1.4_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "8145024143191d6f5d1633936849d6c814b2932332b24fdd51fbe0627d51c5a6"

      def install
        bin.install "txtelite"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/andrewsjg/GoElite/releases/download/v0.1.4/txtelite_0.1.4_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "d4770a87e4eaae95809fa77e1d983e9181f1f5d49183709e766792fcda6d081f"

      def install
        bin.install "txtelite"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/andrewsjg/GoElite/releases/download/v0.1.4/txtelite_0.1.4_Linux_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "cea64d0193d6fa7ecbba5cc163a2afcdd16861e1ffa063a83010d4297d964299"

      def install
        bin.install "txtelite"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/andrewsjg/GoElite/releases/download/v0.1.4/txtelite_0.1.4_Linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "e18b4d26f55970d31f11da3a09c4b95c4afc545ba658d4c8aa1d299b1ca335d0"

      def install
        bin.install "txtelite"
      end
    end
  end

  test do
    system "#{bin}/txtelite --version"
  end
end
