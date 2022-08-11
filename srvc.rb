class Srvc < Formula
    version '0.4.0'
    desc "Sysrev version control."
    homepage "https://github.com/insilica/rs-srvc"

    if OS.mac?
        url "https://github.com/insilica/rs-srvc/releases/download/v#{version}/srvc-v#{version}-x86_64-apple-darwin.tar.gz"
        sha256 "884014ebf1b9b6eee32900dd58f578b4c064764f91efb281429f6539f251df51"
    elsif OS.linux?
        url "https://github.com/insilica/rs-srvc/releases/download/v#{version}/srvc-v#{version}-x86_64-unknown-linux-musl.tar.gz"
        sha256 "7c9752dea1b98fc1f1d86067ada9bc1fea4e65fa85e56b5b67f3849223d5ad1e"
    end

    def install
        bin.install "sr"
    end
end
