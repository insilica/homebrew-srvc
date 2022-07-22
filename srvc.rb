class Srvc < Formula
    version 'TEST-0.0.4'
    desc "Sysrev version control."
    homepage "https://github.com/insilica/rs-srvc"

    if OS.mac?
        url "https://github.com/insilica/rs-srvc/releases/download/#{version}/srvc-#{version}-x86_64-apple-darwin.tar.gz"
        sha256 "af931360f29eb82fda11355bdbdc09c7d5bd56f1d2bbb9c2500780ebe16c47f0"
    elsif OS.linux?
        url "https://github.com/insilica/rs-srvc/releases/download/#{version}/srvc-#{version}-x86_64-unknown-linux-musl.tar.gz"
        sha256 "20947211d8c7b9d1363abe70ffcd6479d3fd60feb0907e1c3aa2264a42591bda"
    end

    def install
        bin.install "sr"
    end
end
  