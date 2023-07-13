
export ASDF_INSTALL_VERSION=1.5.6
export ASDF_INSTALL_PATH=/tmp

Describe 'asdf-dyff'
  Include 'bin/install'

  Describe 'get_download_url()'
    Context "when OS is OSX"
      Mock 'uname'
        echo "darwin"
      End

      # Have to cheat here as can not mock uname twice
      get_arch() {
        echo "amd64"
      }

      It 'returns correct URL'
        When call get_download_url "${ASDF_INSTALL_VERSION}" 'dyff'
        The output should equal "https://github.com/homeport/dyff/releases/download/v${ASDF_INSTALL_VERSION}/dyff_${ASDF_INSTALL_VERSION}_darwin_amd64.tar.gz"
      End
    End

    Context "when OS is Linux on Intel CPU"
      Mock 'uname'
        echo "linux"
      End

      # Have to cheat here as can not mock uname twice
      get_arch() {
        echo "amd64"
      }

      It 'returns correct URL'
        When call get_download_url "${ASDF_INSTALL_VERSION}" 'dyff'
        The output should equal "https://github.com/homeport/dyff/releases/download/v${ASDF_INSTALL_VERSION}/dyff_${ASDF_INSTALL_VERSION}_linux_amd64.tar.gz"
      End
    End
  End
End
