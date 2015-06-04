require 'formula'

class ImdbTags < Formula
  homepage "http://imdb-tags.dillonhafer.com"
  url "https://github.com/dillonhafer/imdb-tags/archive/v0.4.2.tar.gz"
  sha1 "7344d0ab92019c36059ceefbd1267cafeb4b5862"

  depends_on 'go' => :build

  def install
    ENV["GOPATH"] = "#{buildpath}/Godeps/_workspace"
    system("go build -o imdb-tags")
    bin.install("imdb-tags")
  end
end
