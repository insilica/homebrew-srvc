class Srvc < Formula
    version '0.6.0'
    desc "Sysrev version control."
    homepage "https://github.com/insilica/rs-srvc"

    if OS.mac?
        url "https://github.com/insilica/rs-srvc/releases/download/v#{version}/srvc-v#{version}-x86_64-apple-darwin.tar.gz"
        sha256 "8d57ac449e7ae5574bb65fbb9c1cd50e7b5928cc074f60aeeccc8c0e1798593d"
    elsif OS.linux?
        url "https://github.com/insilica/rs-srvc/releases/download/v#{version}/srvc-v#{version}-x86_64-unknown-linux-musl.tar.gz"
        sha256 "6a347b8cbabdbe44961ba019e8ba1e2753e4ad6dbf71543c0178a7b3c11f125f"
    end

    def install
        bin.install "sr"
    end
end
