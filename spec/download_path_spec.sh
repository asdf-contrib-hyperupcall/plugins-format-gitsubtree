
export ASDF_INSTALL_VERSION=1.9.0
export ASDF_INSTALL_PATH=/tmp

Describe 'asdf-cosign'
  Include 'bin/install'

  Describe 'get_download_url()'
    Context 'when OS is OSX'
      Mock 'uname'
        echo 'Darwin'
      End

      # Have to cheat here as can not mock uname twice
      get_arch() {
        echo 'amd64'
      }

      It 'returns correct URL'
        When call get_download_url "${ASDF_INSTALL_VERSION}" 'cosign'
        The output should equal "https://github.com/sigstore/cosign/releases/download/v${ASDF_INSTALL_VERSION}/cosign-darwin-amd64"
      End
    End

    Context 'when OS is Linux'
      Mock 'uname'
        echo 'Linux'
      End

      # Have to cheat here as can not mock uname twice
      get_arch() {
        echo 'amd64'
      }

      It 'returns correct URL'
        When call get_download_url "${ASDF_INSTALL_VERSION}" 'cosign'
        The output should equal "https://github.com/sigstore/cosign/releases/download/v${ASDF_INSTALL_VERSION}/cosign-linux-amd64"
      End
    End
  End
End
