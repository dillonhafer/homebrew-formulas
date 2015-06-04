require 'formula'

class ImdbTags < Formula
  homepage "http://imdb-tags.dillonhafer.com"
  url "https://github.com/dillonhafer/imdb-tags/archive/v0.4.0.tar.gz"
  sha1 "2c99625595f523325734c59686ca7ee82daad94d2b8dc59bd2df4523b28544ef"

  depends_on 'go' => :build

  def install
    ENV["GOPATH"] = "#{buildpath}/Godeps/_workspace"
    system("go build -o imdb-tags")
    bin.install("imdb-tags")
  end
end
