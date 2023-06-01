class Srvc < Formula
    version '0.19.0'
    desc "Sysrev version control."
    homepage "https://github.com/insilica/rs-srvc"

    if OS.mac?
        url "https://github.com/insilica/rs-srvc/releases/download/v#{version}/srvc-v#{version}-x86_64-apple-darwin.tar.gz"
        sha256 "e621d094d0781e77f1aba287f50f476344e3312926ae06663bd3077015c98225"
    elsif OS.linux?
        url "https://github.com/insilica/rs-srvc/releases/download/v#{version}/srvc-v#{version}-x86_64-unknown-linux-musl.tar.gz"
        sha256 "c5c956a727c21f80c590a9135787f5290c8207831c46a202e0ab93b710c41d31"
    end

    def install
        bin.install "sr"
    end
end
