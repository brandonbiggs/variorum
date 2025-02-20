# Copyright 2019-2023 Lawrence Livermore National Security, LLC and other
# Variorum Project Developers. See the top-level LICENSE file for details.
#
# SPDX-License-Identifier: MIT

# c compiler
set(CMAKE_C_COMPILER "gcc" CACHE PATH "")

# cpp compiler
set(CMAKE_CXX_COMPILER "g++" CACHE PATH "")

set(ENABLE_FORTRAN ON CACHE PATH "")

set(USE_MSR_SAFE_BEFORE_1_5_0 OFF CACHE BOOL "")

set(ENABLE_MPI OFF CACHE BOOL "")
set(ENABLE_OPENMP OFF CACHE BOOL "")

set(BUILD_TESTS OFF CACHE BOOL "")

set(VARIORUM_WITH_AMD_CPU OFF CACHE BOOL "")
set(VARIORUM_WITH_AMD_GPU OFF CACHE BOOL "")
set(VARIORUM_WITH_ARM_CPU OFF CACHE BOOL "")
set(VARIORUM_WITH_IBM_CPU OFF CACHE BOOL "")
set(VARIORUM_WITH_INTEL_CPU ON CACHE BOOL "")
set(VARIORUM_WITH_INTEL_GPU OFF CACHE BOOL "")
set(VARIORUM_WITH_NVIDIA_GPU OFF CACHE BOOL "")

# path to global hwloc install
set(HWLOC_DIR "/usr/local/share/hwloc-1.11.7-install" CACHE PATH "")

# path to global jansson install
set(JANSSON_DIR "/usr/local/share/jansson-2.6-install" CACHE PATH "")
