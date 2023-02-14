class Srvc < Formula
    version '0.14.1'
    desc "Sysrev version control."
    homepage "https://github.com/insilica/rs-srvc"

    if OS.mac?
        url "https://github.com/insilica/rs-srvc/releases/download/v#{version}/srvc-v#{version}-x86_64-apple-darwin.tar.gz"
        sha256 "0d2d08afc81f4fd45ef522dbe1cec2ec4da0c95aab405c5d6fe891db541afb4f"
    elsif OS.linux?
        url "https://github.com/insilica/rs-srvc/releases/download/v#{version}/srvc-v#{version}-x86_64-unknown-linux-musl.tar.gz"
        sha256 "9e4fa1ec2b88007026ad480450e5628935219ca2cc96e08fb0e4e8a224296d27"
    end

    def install
        bin.install "sr"
    end
end
