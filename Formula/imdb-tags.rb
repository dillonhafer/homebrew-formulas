require 'formula'

class ImdbTags < Formula
  homepage "http://imdb-tags.dillonhafer.com"
  url "https://github.com/dillonhafer/imdb-tags/archive/v0.4.0.tar.gz"
  sha1 "f9ce04ffd39758ef4b4b0209b406c6bf8dca7e18"

  depends_on 'go' => :build

  def install
    ENV["GOPATH"] = "#{buildpath}/Godeps/_workspace"
    system("mkdir -p #{buildpath}/Godeps/_workspace/src/github.com/dillonhafer/imdb-tags")
    system("go build -o imdb-tags")
    bin.install("imdb-tags")
  end
end
