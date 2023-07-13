
export ASDF_INSTALL_VERSION=0.21.0
export ASDF_INSTALL_PATH=/tmp

Describe 'asdf-bat'
  Include 'bin/install'

  Describe 'get_download_url()'
    Context "when OS is OSX"
      Mock 'uname'
        echo "Darwin"
      End

      # Have to cheat here as can not mock uname twice
      get_arch() {
        echo "x86_64"
      }

      It 'returns correct URL'
        When call get_download_url "${ASDF_INSTALL_VERSION}" 'bat'
        The output should equal "https://github.com/noahgorstein/jqp/releases/download/v${ASDF_INSTALL_VERSION}/jqp_${ASDF_INSTALL_VERSION}_Darwin_x86_64.tar.gz"
      End
    End

    Context "when OS is Linux on Intel CPU"
      Mock 'uname'
        echo "Linux"
      End

      # Have to cheat here as can not mock uname twice
      get_arch() {
        echo "x86_64"
      }

      It 'returns correct URL'
        When call get_download_url "${ASDF_INSTALL_VERSION}" 'bat'
        The output should equal "https://github.com/noahgorstein/jqp/releases/download/v${ASDF_INSTALL_VERSION}/jqp_${ASDF_INSTALL_VERSION}_Linux_x86_64.tar.gz"
      End
    End

    Context "when OS is Linux on ARM CPU"
      Mock 'uname'
        echo "Linux"
      End

      # Have to cheat here as can not mock uname twice
      get_arch() {
        echo "arm64"
      }

      It 'returns correct URL'
        When call get_download_url "${ASDF_INSTALL_VERSION}" 'bat'
        The output should equal "https://github.com/noahgorstein/jqp/releases/download/v${ASDF_INSTALL_VERSION}/jqp_${ASDF_INSTALL_VERSION}_Linux_arm64.tar.gz"
      End
    End
  End
End
