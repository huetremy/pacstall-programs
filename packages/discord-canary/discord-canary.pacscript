name="discord-canary"
repology=("project: discord-canary" "repo: aur")
version="0.0.148"
maintainer="DismissedGuy <me@mikealmel.ooo>"
url="https://dl-canary.discordapp.net/apps/linux/${version}/${name}-${version}.tar.gz"
depends="libc6 libasound2 libatomic1 libgconf-2-4 libnotify4 libnspr4 libnss3 libstdc++6 libxss1 libxtst6 libayatana-appindicator1 libc++1"
description="Chat for Communities and Friends - Unstable"
hash="d99ad20f23e3dc01eb882599fdb6f7d371f727ded34ee9fffd68e62273449b09"

prepare() {
        sudo mkdir -p /usr/src/pacstall/${name}/usr/share/${name}/
        sudo mkdir -p /usr/src/pacstall/${name}/usr/share/applications/
        sudo mkdir -p /usr/src/pacstall/${name}/usr/share/icons/
}

build() {
        true
}

install() {
        sudo install -Dm755 discord-canary.desktop "${STOWDIR}/${name}/usr/share/applications/discord-canary.desktop"
        sudo install -Dm755 discord.png "${STOWDIR}/${name}/usr/share/icons/discord-canary.png"
        sudo cp -R ./* "${STOWDIR}/${name}/usr/share/${name}/"
}
