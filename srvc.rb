class Srvc < Formula
    version '0.9.0'
    desc "Sysrev version control."
    homepage "https://github.com/insilica/rs-srvc"

    if OS.mac?
        url "https://github.com/insilica/rs-srvc/releases/download/v#{version}/srvc-v#{version}-x86_64-apple-darwin.tar.gz"
        sha256 "7fd3df5ca9581e5fbfd42b28f69c3f5dd850507e287ce2a97c2c7506ceaf68e7"
    elsif OS.linux?
        url "https://github.com/insilica/rs-srvc/releases/download/v#{version}/srvc-v#{version}-x86_64-unknown-linux-musl.tar.gz"
        sha256 "8e8e3fc50a01456e5daeb520e7d9a59070602942c788f9c0ab11ea63c3f89248"
    end

    def install
        bin.install "sr"
    end
end
