
export ASDF_INSTALL_VERSION=123
export ASDF_INSTALL_PATH=/tmp

Describe 'asdf-bat'
  Include 'bin/install'

  Describe 'get_arch()'
    Context "when CPU is Intel (64 bit)"
      Mock 'uname'
        echo "x86_64"
      End

      It "returns x86_64"
        When call get_arch
        The output should equal "x86_64"
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


  End

  Describe 'get_platform()'
    Context "when OS is OSX"
      Mock uname
        echo "Darwin"
      End

      # Have to cheat here as can not mock uname twice
      get_arch() {
        echo "x86_64"
      }

      It "returns Darwin"
        When call get_platform
        The output should equal "Darwin"
      End
    End

    Context "when OS is Linux on Intel CPU"
      Mock uname
        echo "Linux"
      End

      # Have to cheat here as can not mock uname twice
      get_arch() {
        echo "x86_64"
      }

      It "returns Linux"
        When call get_platform
        The output should equal "Linux"
      End
    End

    Context "when OS is Linux on ARM CPU"
      Mock uname
        echo "Linux"
      End

      # Have to cheat here as can not mock uname twice
      get_arch() {
        echo "arm64"
      }

      It "returns Linux"
        When call get_platform
        The output should equal "Linux"
      End
    End

    Context "when OS is Windows"
      Mock uname
        echo "Windows"
      End

      # Have to cheat here as can not mock uname twice
      get_arch() {
        echo "x86_64"
      }

      It "returns Windows"
        When call get_platform
        The output should equal "Windows"
      End
    End
  End
End


