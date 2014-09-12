include(RunCMake)

set(RunCMake_GENERATOR_PLATFORM "")
run_cmake(NoPlatform)

if("${RunCMake_GENERATOR}" MATCHES "^Visual Studio ([89]|1[0124])( 20[0-9][0-9])?$")
  set(RunCMake_GENERATOR_PLATFORM "x64")
  run_cmake(x64Platform)
else()
  set(RunCMake_GENERATOR_PLATFORM "Bad Platform")
  run_cmake(BadPlatform)
endif()