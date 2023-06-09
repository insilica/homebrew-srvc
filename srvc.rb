class Srvc < Formula
    version '0.19.1'
    desc "Sysrev version control."
    homepage "https://github.com/insilica/rs-srvc"

    if OS.mac?
        url "https://github.com/insilica/rs-srvc/releases/download/v#{version}/srvc-v#{version}-x86_64-apple-darwin.tar.gz"
        sha256 "e05c3a74375140b7ce010f35e351f947a1911fb060344d80dd8f4a4bbf1139e4"
    elsif OS.linux?
        url "https://github.com/insilica/rs-srvc/releases/download/v#{version}/srvc-v#{version}-x86_64-unknown-linux-musl.tar.gz"
        sha256 "f9f284b893b04bfbbcf559c21716bf84b263c6959608521c35412feef0277840"
    end

    def install
        bin.install "sr"
    end
end
