class Srvc < Formula
    version '0.8.0'
    desc "Sysrev version control."
    homepage "https://github.com/insilica/rs-srvc"

    if OS.mac?
        url "https://github.com/insilica/rs-srvc/releases/download/v#{version}/srvc-v#{version}-x86_64-apple-darwin.tar.gz"
        sha256 "dcd9ca883e9ce689be36cb78cf6e624312a2a6c04265799c9547fd00962dd444"
    elsif OS.linux?
        url "https://github.com/insilica/rs-srvc/releases/download/v#{version}/srvc-v#{version}-x86_64-unknown-linux-musl.tar.gz"
        sha256 "fe4bca99533912b1aa414a5647effa16c7b21ceacbf2888dd341b7c22a7e1a6e"
    end

    def install
        bin.install "sr"
    end
end
