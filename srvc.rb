class Srvc < Formula
    version '0.4.0'
    desc "Sysrev version control."
    homepage "https://github.com/insilica/rs-srvc"

    if OS.mac?
        url "https://github.com/insilica/rs-srvc/releases/download/v#{version}/srvc-v#{version}-x86_64-apple-darwin.tar.gz"
        sha256 "c83624616341206180a2a6ad0767aa1e60f262da838ad891cfc1b4642e9347ef"
    elsif OS.linux?
        url "https://github.com/insilica/rs-srvc/releases/download/v#{version}/srvc-v#{version}-x86_64-unknown-linux-musl.tar.gz"
        sha256 "cd7d5d771fb07f39a41c114929f87c38351f9352909dd3c0879bb621dea7bf48"
    end

    def install
        bin.install "sr"
    end
end
