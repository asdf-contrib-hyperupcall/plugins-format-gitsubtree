
export ASDF_INSTALL_VERSION=123
export ASDF_INSTALL_PATH=/tmp

Describe 'asdf-cosign'
  Include 'bin/install'

  Describe 'get_arch()'
    Context 'when CPU is Intel'
      Mock 'uname'
        echo 'x86_64'
      End

      It 'returns amd64 on Intel CPU'
        When call get_arch
        The output should equal 'amd64'
      End
    End
  End

  Describe 'get_platform()'
    Context 'when OS is OSX'
      Mock uname
        echo 'Darwin'
      End

      It 'returns darwin'
        When call get_platform
        The output should equal 'darwin'
      End
    End

    Context 'when OS is Linux'
      Mock uname
        echo 'Linux'
      End

      It 'returns linux'
        When call get_platform
        The output should equal 'linux'
      End
    End
  End
End


