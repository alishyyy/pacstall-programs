pkgname="clio"
repology=("project: ${gives}")
pkgver="1.1.0"
pkgdesc="CLI tool that displays facts about Linux, Unix, and computers using bash"
arch=('all')
license=('MIT')
maintainer=("Alisha <alishyy@proton.me>")
url='https://github.com/alishyyy/clio'
source=("git+https://github.com/alishyyy/clio.git")
sha256sums=("SKIP")
package() {
  cd "${pkgname}"
  install -Dm755 bin/clio "${pkgdir}/usr/bin/clio"
  install -Dm644 data/facts.txt "${pkgdir}/usr/share/clio/facts.txt"
  install -Dm644 LICENSE -t "${pkgdir}/usr/share/licenses/${pkgname}"
}
