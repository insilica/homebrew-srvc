class Srvc < Formula
    version '0.20.0'
    desc "Sysrev version control."
    homepage "https://github.com/insilica/rs-srvc"

    if OS.mac?
        url "https://github.com/insilica/rs-srvc/releases/download/v#{version}/srvc-v#{version}-x86_64-apple-darwin.tar.gz"
        sha256 "d86ad88fcd4fef3d8e4f61f04066974b9a8ef3bf5a803afc9b417dee2c251ef3"
    elsif OS.linux?
        url "https://github.com/insilica/rs-srvc/releases/download/v#{version}/srvc-v#{version}-x86_64-unknown-linux-musl.tar.gz"
        sha256 "2b810ac7ef003a309f2a89333f3641346fb5112c349029421c9a87c04e97e649"
    end

    def install
        bin.install "sr"
    end
end
