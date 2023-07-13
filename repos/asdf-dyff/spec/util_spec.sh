
export ASDF_INSTALL_VERSION=123
export ASDF_INSTALL_PATH=/tmp

Describe 'asdf-dyff'
  Include 'bin/install'

  Describe 'get_arch()'
    Context "when CPU is Intel"
      Mock 'uname'
        echo "x86_64"
      End

      It "returns amd64"
        When call get_arch
        The output should equal "amd64"
      End
    End

    Context "when CPU is ARM64"
      Mock 'uname'
        echo "arm64"
      End

      It "returns arm64"
        When call get_arch
        The output should equal "arm64"
      End
    End

    Context "when CPU is ARM"
      Mock 'uname'
        echo "armv7l"
      End

      It "returns armv7l"
        When call get_arch
        The output should equal "armv7l"
      End
    End
  End

  Describe 'get_platform()'
    Context "when OS is OSX"
      Mock uname
        echo "Darwin"
      End

      It "returns darwin"
        When call get_platform
        The output should equal "darwin"
      End
    End

    Context "when OS is Linux"
      Mock uname
        echo "Linux"
      End

      It "returns linux"
        When call get_platform
        The output should equal "linux"
      End
    End

    Context "when OS is Windows"
      Mock uname
        echo "Windows"
      End

      It "returns windows"
        When call get_platform
        The output should equal "windows"
      End
    End
  End
End


