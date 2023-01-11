class Srvc < Formula
    version '0.12.0'
    desc "Sysrev version control."
    homepage "https://github.com/insilica/rs-srvc"

    if OS.mac?
        url "https://github.com/insilica/rs-srvc/releases/download/v#{version}/srvc-v#{version}-x86_64-apple-darwin.tar.gz"
        sha256 "2b06cc070c434e173819d882cbf58cbbece410965a4a07d7ba25e3f23624c58b"
    elsif OS.linux?
        url "https://github.com/insilica/rs-srvc/releases/download/v#{version}/srvc-v#{version}-x86_64-unknown-linux-musl.tar.gz"
        sha256 "5ece90c1c61be2b97df9e11c6318d3686cf38a6a6399bd8f38cb066d8e1d6543"
    end

    def install
        bin.install "sr"
    end
end
