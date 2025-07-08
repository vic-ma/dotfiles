source ci/env.sh

set -eu -o pipefail

sudo meson subprojects download libipuz
sudo meson setup _libipuz_build subprojects/libipuz --prefix /usr -Dintrospection=disabled -Ddocumentation=disabled
sudo meson compile -C _libipuz_build
sudo meson install -C _libipuz_build

sudo meson setup _build --prefix /usr
sudo meson compile -C _build
sudo meson test -C _build --print-errorlogs
