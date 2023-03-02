class Srvc < Formula
    version '0.15.0'
    desc "Sysrev version control."
    homepage "https://github.com/insilica/rs-srvc"

    if OS.mac?
        url "https://github.com/insilica/rs-srvc/releases/download/v#{version}/srvc-v#{version}-x86_64-apple-darwin.tar.gz"
        sha256 "41db5f2a6fc4fded8cf1bc83c55d502c4545b780b414316ff383d846b246306c"
    elsif OS.linux?
        url "https://github.com/insilica/rs-srvc/releases/download/v#{version}/srvc-v#{version}-x86_64-unknown-linux-musl.tar.gz"
        sha256 "5f0ffffabe8382e9e505cb773865dae5b036edf1e6089dae3905456ba8791f3c"
    end

    def install
        bin.install "sr"
    end
end
