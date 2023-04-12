class Srvc < Formula
    version '0.17.0'
    desc "Sysrev version control."
    homepage "https://github.com/insilica/rs-srvc"

    if OS.mac?
        url "https://github.com/insilica/rs-srvc/releases/download/v#{version}/srvc-v#{version}-x86_64-apple-darwin.tar.gz"
        sha256 "3b31794ba965c059f95480c0035221b6268ec09fc4ed87ba93817d3145b81a51"
    elsif OS.linux?
        url "https://github.com/insilica/rs-srvc/releases/download/v#{version}/srvc-v#{version}-x86_64-unknown-linux-musl.tar.gz"
        sha256 "8b1eb4cf6060e8fa12f60032996203f2675bc1b246d6c566c1f7a1ee1461127f"
    end

    def install
        bin.install "sr"
    end
end
