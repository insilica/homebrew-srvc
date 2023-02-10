class Srvc < Formula
    version '0.14.0'
    desc "Sysrev version control."
    homepage "https://github.com/insilica/rs-srvc"

    if OS.mac?
        url "https://github.com/insilica/rs-srvc/releases/download/v#{version}/srvc-v#{version}-x86_64-apple-darwin.tar.gz"
        sha256 "f82b767ab26562230fa17c663b991e60f77036ce3bbf1daea5a89dd8afcd4b00"
    elsif OS.linux?
        url "https://github.com/insilica/rs-srvc/releases/download/v#{version}/srvc-v#{version}-x86_64-unknown-linux-musl.tar.gz"
        sha256 "e04b8edd3d4b1a32c7c875eddc6391c67263c61a038d9c22bb1f764a1fcd390c"
    end

    def install
        bin.install "sr"
    end
end
