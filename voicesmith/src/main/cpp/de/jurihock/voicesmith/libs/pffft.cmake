# https://bitbucket.org/jpommier/pffft

CPMAddPackage(
  NAME pffft
  VERSION 2024.04.08
  GIT_TAG fbc4058602803f40dc554b8a5d2bcc694c005f2f
  GIT_REPOSITORY https://bitbucket.org/jpommier/pffft
  DOWNLOAD_ONLY YES)

if(pffft_ADDED)

  set(HDR "${pffft_SOURCE_DIR}/pffft.h")
  set(SRC "${pffft_SOURCE_DIR}/pffft.c")

  add_library(pffft)

  target_sources(pffft
    PUBLIC "${HDR}"
    PRIVATE "${SRC}")

  target_include_directories(pffft
    PUBLIC "${pffft_SOURCE_DIR}")

endif()
