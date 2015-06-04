require 'formula'

class ImdbTags < Formula
  homepage "http://imdb-tags.dillonhafer.com"
  url "https://github.com/dillonhafer/imdb-tags/archive/v0.4.1.tar.gz"
  sha1 "2d63e13460fa766137c14ccde9dbcd1d21cb8e7a"

  depends_on 'go' => :build

  def install
    ENV["GOPATH"] = "#{buildpath}/Godeps/_workspace"
    system("go build -o imdb-tags")
    bin.install("imdb-tags")
  end
end
