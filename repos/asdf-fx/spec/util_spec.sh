
export ASDF_INSTALL_VERSION=123
export ASDF_INSTALL_PATH=/tmp

Describe 'asdf-fx'
  Include 'bin/install'

  Describe 'get_arch()'
    Context 'when CPU is Intel'
      Mock 'uname'
        echo 'x86_64'
      End

      It 'returns x86_64 on Intel CPU'
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

      It 'returns macos for version < 21.0.0'
        When call get_platform '20.0.0'
        The output should equal 'macos'
      End

      It 'returns macos for version >= 21.0.0'
        When call get_platform '21.0.0'
        The output should equal 'darwin'
      End
    End

    Context 'when OS is Linux'
      Mock uname
        echo 'Linux'
      End

      It 'returns linux for on Linux'
        When call get_platform '20.0.0'
        The output should equal 'linux'
      End
    End
  End
End


