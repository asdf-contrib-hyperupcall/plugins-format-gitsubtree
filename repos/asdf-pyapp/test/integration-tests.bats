in_container() {
  args=($*)
  docker exec -it "$CONTAINER" bash -l -c "${args[*]@Q}"
}

setup() {
  load 'test_helper/bats-support/load'
  load 'test_helper/bats-assert/load'

  MY_DIR="$(cd "$(dirname "$BATS_TEST_FILENAME")" >/dev/null 2>&1 && pwd)"
  SRCROOT=$(dirname "$MY_DIR")

  TAG="asdf-pyapp-integration-bionic"
  CONTAINER="${TAG}-container"

  DOCKER_BUILDKIT=0 docker build \
    -f docker/bionic/Dockerfile \
    -t "$TAG" \
    "$SRCROOT" || return 1
  docker run --rm -d -it --init --name "$CONTAINER" "$TAG"
  in_container mkdir /root/.asdf/plugins || true
}

teardown() {
  docker stop "$CONTAINER"

  # wait for container to be _removed_
  # https://stackoverflow.com/a/57631771/4468
  while docker container inspect "$CONTAINER" >/dev/null 2>&1; do sleep 1; done
}

@test "install with system python no asdf" {

  # asdf python is baked into the container, remove it first
  in_container asdf plugin remove python

  run in_container which python3
  assert_output --partial /usr/bin/python3 #TODO: why is --partial required? newline?

  in_container asdf plugin add cowsay /root/asdf-pyapp
  in_container asdf install cowsay 4.0
  in_container asdf global cowsay 4.0
  in_container cowsay "woo woo"

  run in_container readlink /root/.asdf/installs/cowsay/4.0/venv/bin/python3
  assert_output --partial /usr/bin/python3
}

@test "install with system python via asdf" {

  in_container asdf global python system

  run in_container which python3
  assert_output --partial /root/.asdf/shims/python3

  in_container asdf plugin add cowsay /root/asdf-pyapp
  in_container asdf install cowsay 4.0
  in_container asdf global cowsay 4.0
  in_container cowsay "woo woo"

  run in_container readlink /root/.asdf/installs/cowsay/4.0/venv/bin/python3
  assert_output --partial /usr/bin/python3
}

@test "install with asdf python 3.8.10" {

  in_container asdf global python 3.8.10

  run in_container which python3
  assert_output --partial /root/.asdf/shims/python3

  in_container asdf plugin add cowsay /root/asdf-pyapp
  in_container asdf install cowsay 4.0
  in_container asdf global cowsay 4.0
  in_container cowsay "woo woo"

  run in_container readlink /root/.asdf/installs/cowsay/4.0/venv/bin/python3
  assert_output --partial /root/.asdf/installs/python/3.8.10/bin/python3
}

@test "install with asdf python 3.5.10 system python 3.6" {
  # we require python >= 3.6. asdf-pyapp should detect that
  # asdf python3 should override the system python3

  in_container asdf global python 3.5.10

  run in_container which python3
  assert_output --partial /root/.asdf/shims/python3

  in_container asdf plugin add cowsay /root/asdf-pyapp

  run in_container asdf install cowsay 4.0
  assert_output --partial "Failed to find python3 >= 3.6"
}

@test "install with asdf python 3.5.10 no system python3" {
  # we only have python 3.5, asdf-pyapp should fail

  in_container apt remove -y -f python3 python3-minimal

  in_container asdf global python 3.5.10

  run in_container which python3
  assert_output --partial /root/.asdf/shims/python3

  in_container asdf plugin add cowsay /root/asdf-pyapp

  run in_container asdf install cowsay 4.0
  assert_output --partial "Failed to find python3 >= 3.6"
}

@test "check latest with pip version 19.3" {

  local pip_version=19.3.1

  in_container asdf global python 3.8.10

  in_container python3 -m pip install --upgrade pip=="$pip_version"

  run in_container python3 -m pip --version
  assert_output --partial "$pip_version"

  in_container asdf plugin add cowsay /root/asdf-pyapp
  run in_container asdf list all cowsay
  # TODO: "asdf list all" seems to mask return codes. It exits 0 even if we
  # exit nonzero in our function. So just check output for errors for now...
  refute_output --partial "asdf-pyapp: [ERROR]"
}

@test "check latest with pip version 20.0" {

  local pip_version=20.0.1

  in_container asdf global python 3.8.10

  in_container python3 -m pip install --upgrade pip=="$pip_version"

  run in_container python3 -m pip --version
  assert_output --partial "$pip_version"

  in_container asdf plugin add cowsay /root/asdf-pyapp
  run in_container asdf list all cowsay
  # TODO: "asdf list all" seems to mask return codes. It exits 0 even if we
  # exit nonzero in our function. So just check output for errors for now...
  refute_output --partial "asdf-pyapp: [ERROR]"
}

@test "check latest with pip version 20.1" {

  local pip_version=20.1.1

  in_container asdf global python 3.8.10

  in_container python3 -m pip install --upgrade pip=="$pip_version"

  run in_container python3 -m pip --version
  assert_output --partial "$pip_version"

  in_container asdf plugin add cowsay /root/asdf-pyapp
  run in_container asdf list all cowsay
  # TODO: "asdf list all" seems to mask return codes. It exits 0 even if we
  # exit nonzero in our function. So just check output for errors for now...
  refute_output --partial "asdf-pyapp: [ERROR]"
}

@test "check latest with pip version 20.2" {

  local pip_version=20.2.4

  in_container asdf global python 3.8.10

  in_container python3 -m pip install --upgrade pip=="$pip_version"

  run in_container python3 -m pip --version
  assert_output --partial "$pip_version"

  in_container asdf plugin add cowsay /root/asdf-pyapp
  run in_container asdf list all cowsay
  # TODO: "asdf list all" seems to mask return codes. It exits 0 even if we
  # exit nonzero in our function. So just check output for errors for now...
  refute_output --partial "asdf-pyapp: [ERROR]"
}

@test "check latest with pip version 20.3" {

  local pip_version=20.3.4

  in_container asdf global python 3.8.10

  in_container python3 -m pip install --upgrade pip=="$pip_version"

  run in_container python3 -m pip --version
  assert_output --partial "$pip_version"

  in_container asdf plugin add cowsay /root/asdf-pyapp
  run in_container asdf list all cowsay
  # TODO: "asdf list all" seems to mask return codes. It exits 0 even if we
  # exit nonzero in our function. So just check output for errors for now...
  refute_output --partial "asdf-pyapp: [ERROR]"
}

@test "check latest with pip version 21.3" {

  local pip_version=21.3.1

  in_container asdf global python 3.8.10

  in_container python3 -m pip install --upgrade pip=="$pip_version"

  run in_container python3 -m pip --version
  assert_output --partial "$pip_version"

  in_container asdf plugin add cowsay /root/asdf-pyapp
  run in_container asdf list all cowsay
  # TODO: "asdf list all" seems to mask return codes. It exits 0 even if we
  # exit nonzero in our function. So just check output for errors for now...
  refute_output --partial "asdf-pyapp: [ERROR]"
}

@test "check \$ASDF_PYAPP_DEFAULT_PYTHON_PATH works" {
  # When an app is installed without a python version specified,
  # the asdf-pyapp defaults to python3 in our $PATH, which is the
  # asdf shim. We override it to the system python3.

  in_container asdf global python 3.8.10

  in_container eval "echo \"export ASDF_PYAPP_DEFAULT_PYTHON_PATH=/usr/bin/python3\" >> /root/.profile"

  in_container asdf plugin add cowsay /root/asdf-pyapp
  in_container asdf install cowsay 4.0

  run in_container readlink /root/.asdf/installs/cowsay/4.0/venv/bin/python3
  assert_output --partial /usr/bin/python3
}

setup_direnv() {

  in_container asdf global direnv 2.28.0
  in_container eval 'echo "source setup-direnv.bash" >> ~/.profile'

  DIRENV="direnv allow . && eval \"\$(direnv export bash)\""
}

@test "install with local python in direnv" {

  setup_direnv

  in_container asdf global python system
  in_container python3 --version
  in_container asdf plugin add cowsay /root/asdf-pyapp

  in_container mkdir project
  in_container eval "echo \"python 3.8.10\" >> project/.tool-versions"
  in_container eval "echo \"cowsay 4.0\" >> project/.tool-versions"
  in_container eval "echo \"use asdf\" >> project/.envrc"

  in_container eval "cd project && $DIRENV && asdf install"

  run in_container readlink /root/.asdf/installs/cowsay/4.0/venv/bin/python3
  assert_output --partial /usr/bin/python3
}

@test "install with python plugin integration" {

  local cowsay_ver="4.0"
  local python_ver="3.8.2"
  local combined_ver="${cowsay_ver}@${python_ver}"

  in_container asdf global python system

  in_container asdf plugin add cowsay /root/asdf-pyapp
  in_container asdf install cowsay "$combined_ver"
  in_container asdf local cowsay "$combined_ver"
  in_container cowsay "woo woo"

  # by default, the venv is created with "--copies", so python should not be a symlink
  refute in_container readlink /root/.asdf/installs/cowsay/4.0/venv/bin/python3

  # python3 should be the right version
  run in_container /root/.asdf/installs/cowsay/"$combined_ver"/venv/bin/python3 --version
  assert_output --partial "$python_ver"
}

@test "install with python plugin integration without python plugin installed" {

  local cowsay_ver="4.0"
  local python_ver="3.8.2"
  local combined_ver="${cowsay_ver}@${python_ver}"

  in_container asdf plugin remove python

  in_container asdf plugin add cowsay /root/asdf-pyapp
  run in_container asdf install cowsay "$combined_ver"
  # TODO: not sure I like matching on error message text...
  assert_output --partial "asdf python plugin is not installed!"
}

@test "install with asdf direnv no shims no global python" {

  # remove regular asdf setup
  # TODO: this seems fragile, consider refactoring
  in_container sed -i '/asdf.sh/d' /root/.profile

  # add asdf without shims in path
  # https://github.com/asdf-community/asdf-direnv#pro-tips
  # TODO: this seems fragile, consider refactoring
  in_container eval "echo \"PATH=\$PATH:\$HOME/.asdf/bin\" >> /root/.profile"
  in_container eval "echo source \$HOME/.asdf/lib/asdf.sh >> /root/.profile"

  setup_direnv

  local cowsay_ver="4.0"

  in_container asdf plugin add cowsay /root/asdf-pyapp

  in_container mkdir project
  in_container eval "echo \"cowsay 4.0\" >> project/.tool-versions"
  in_container eval "echo \"use asdf\" >> project/.envrc"

  in_container eval "cd project && $DIRENV && asdf install"

  run in_container readlink /root/.asdf/installs/cowsay/4.0/venv/bin/python3
  assert_output --partial /usr/bin/python3
}

@test "install with asdf direnv no shims with global python" {

  # remove regular asdf setup
  # TODO: this seems fragile, consider refactoring
  in_container sed -i '/asdf.sh/d' /root/.profile

  # add asdf without shims in path
  # https://github.com/asdf-community/asdf-direnv#pro-tips
  # TODO: this seems fragile, consider refactoring
  in_container eval "echo \"PATH=\$PATH:\$HOME/.asdf/bin\" >> /root/.profile"
  in_container eval "echo source \$HOME/.asdf/lib/asdf.sh >> /root/.profile"

  setup_direnv

  local cowsay_ver="4.0"
  local python_ver="3.8.10"

  in_container asdf global python $python_ver
  in_container asdf install

  in_container asdf plugin add cowsay /root/asdf-pyapp

  in_container mkdir project
  in_container eval "echo \"cowsay 4.0\" >> project/.tool-versions"
  in_container eval "echo \"use asdf\" >> project/.envrc"

  in_container eval "cd project && $DIRENV && asdf install"

  run in_container readlink /root/.asdf/installs/cowsay/4.0/venv/bin/python3
  #assert_output --partial /usr/bin/python3
  assert_output --partial /root/.asdf/installs/python/3.8.10/bin/python3
}

@test "check ASDF_PYAPP_VENV_COPY_MODE=1" {

  in_container asdf global python system

  in_container asdf plugin add cowsay /root/asdf-pyapp
  in_container eval "ASDF_PYAPP_VENV_COPY_MODE=1 asdf install cowsay 4.0"
  in_container asdf global cowsay 4.0
  in_container cowsay "woo woo"

  refute in_container readlink /root/.asdf/installs/cowsay/4.0/venv/bin/python3
}

@test "check ASDF_PYAPP_INCLUDE_DEPS=0 doesn't install executables of dependencies" {

  in_container asdf global python 3.8.10

  in_container eval "ASDF_PYAPP_INCLUDE_DEPS=0 asdf plugin add ansible /root/asdf-pyapp"
  in_container asdf install ansible latest
  in_container asdf global ansible latest

  ### Ansiblee should *not* be available
  refute in_container ansible --version
}

@test "check ASDF_PYAPP_INCLUDE_DEPS=1 installs executables of dependencies" {

  in_container asdf global python 3.8.10

  in_container eval "ASDF_PYAPP_INCLUDE_DEPS=1 asdf plugin add ansible /root/asdf-pyapp"
  in_container asdf install ansible latest
  in_container asdf global ansible latest

  assert in_container ansible --version
}

##################################################
# Individual App Checks

check_app() {
  local app="$1"
  local version="$2"
  shift
  shift

  in_container asdf global python system
  in_container asdf plugin add "$app" /root/asdf-pyapp
  in_container asdf install "$app" "$version"
  in_container asdf global "$app" "$version"

  in_container $*
}

@test "check app awscli latest" {
  check_app awscli latest aws --version
}

@test "check app awsebcli latest" {
  check_app awsebcli latest eb --version
}

@test "check app aws-sam-cli latest" {
  check_app aws-sam-cli latest sam --version
}

@test "check app black latest" {
  skip
  # TODO: black latest doesn't work for some reason
  check_app black latest black --version
}

@test "check app black 21.5b2" {
  check_app black 21.5b2 black --version
}

@test "check app bpython latest" {
  check_app bpython latest bpython --version
}

@test "check app conan latest" {
  check_app conan latest conan --version
}

@test "check app doit latest" {
  check_app doit latest doit --version
}

@test "check app flake8 latest" {
  check_app flake8 latest flake8 --version
}

@test "check app hy latest" {
  skip
  # hy latest (0.20.0 atm) does not install with python 3.6
  check_app hy latest --version
}

@test "check app hy 0.20.0@3.8.2" {
  check_app hy 0.20.0@3.8.2 hy --version
}

@test "check app meson latest" {
  check_app meson latest meson --version
}

@test "check app mypy latest" {
  check_app mypy latest mypy --version
}

@test "check app pipenv latest" {
  check_app pipenv latest pipenv --version
}

@test "check app salt latest" {
  check_app salt latest salt --version
}

@test "check app sphinx latest" {
  check_app sphinx latest sphinx-build --version
}

@test "check app aws-ssm-tools latest" {
  check_app aws-ssm-tools latest ssm-session --version
}

@test "check app yawsso latest" {
  check_app yawsso latest yawsso --version
}

@test "check app pre-commit latest" {
  check_app pre-commit latest pre-commit --version
}
