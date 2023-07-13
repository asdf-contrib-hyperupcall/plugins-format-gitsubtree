
export ASDF_INSTALL_VERSION=123
export ASDF_INSTALL_PATH=/tmp

Describe 'asdf-fx'
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

      It 'returns correct URL for version < 21.0.0 on OSX'
        When call get_download_url '20.0.0' 'fx'
        The output should equal 'https://github.com/antonmedv/fx/releases/download/20.0.0/fx-macos.zip'
      End

      It 'returns correct URL for version >= 21.0.0 on OSX'
        When call get_download_url '21.0.0' 'fx'
        The output should equal 'https://github.com/antonmedv/fx/releases/download/21.0.0/fx_darwin_amd64'
      End
    End
  End
End
