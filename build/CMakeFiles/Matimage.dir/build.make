# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.11

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/lyx/personal/my-git/capture-video

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lyx/personal/my-git/capture-video/build

# Include any dependencies generated for this target.
include CMakeFiles/Matimage.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Matimage.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Matimage.dir/flags.make

CMakeFiles/Matimage.dir/matvideo.cpp.o: CMakeFiles/Matimage.dir/flags.make
CMakeFiles/Matimage.dir/matvideo.cpp.o: ../matvideo.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lyx/personal/my-git/capture-video/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Matimage.dir/matvideo.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Matimage.dir/matvideo.cpp.o -c /home/lyx/personal/my-git/capture-video/matvideo.cpp

CMakeFiles/Matimage.dir/matvideo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Matimage.dir/matvideo.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lyx/personal/my-git/capture-video/matvideo.cpp > CMakeFiles/Matimage.dir/matvideo.cpp.i

CMakeFiles/Matimage.dir/matvideo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Matimage.dir/matvideo.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lyx/personal/my-git/capture-video/matvideo.cpp -o CMakeFiles/Matimage.dir/matvideo.cpp.s

# Object files for target Matimage
Matimage_OBJECTS = \
"CMakeFiles/Matimage.dir/matvideo.cpp.o"

# External object files for target Matimage
Matimage_EXTERNAL_OBJECTS =

Matimage: CMakeFiles/Matimage.dir/matvideo.cpp.o
Matimage: CMakeFiles/Matimage.dir/build.make
Matimage: /usr/local/lib/libopencv_videostab.so.2.4.11
Matimage: /usr/local/lib/libopencv_ts.a
Matimage: /usr/local/lib/libopencv_superres.so.2.4.11
Matimage: /usr/local/lib/libopencv_stitching.so.2.4.11
Matimage: /usr/local/lib/libopencv_contrib.so.2.4.11
Matimage: /usr/local/lib/libopencv_nonfree.so.2.4.11
Matimage: /usr/local/lib/libopencv_ocl.so.2.4.11
Matimage: /usr/local/lib/libopencv_gpu.so.2.4.11
Matimage: /usr/local/lib/libopencv_photo.so.2.4.11
Matimage: /usr/local/lib/libopencv_objdetect.so.2.4.11
Matimage: /usr/local/lib/libopencv_legacy.so.2.4.11
Matimage: /usr/local/lib/libopencv_video.so.2.4.11
Matimage: /usr/local/lib/libopencv_ml.so.2.4.11
Matimage: /usr/local/lib/libopencv_calib3d.so.2.4.11
Matimage: /usr/local/lib/libopencv_features2d.so.2.4.11
Matimage: /usr/local/lib/libopencv_highgui.so.2.4.11
Matimage: /usr/local/lib/libopencv_imgproc.so.2.4.11
Matimage: /usr/local/lib/libopencv_flann.so.2.4.11
Matimage: /usr/local/lib/libopencv_core.so.2.4.11
Matimage: CMakeFiles/Matimage.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lyx/personal/my-git/capture-video/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Matimage"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Matimage.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Matimage.dir/build: Matimage

.PHONY : CMakeFiles/Matimage.dir/build

CMakeFiles/Matimage.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Matimage.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Matimage.dir/clean

CMakeFiles/Matimage.dir/depend:
	cd /home/lyx/personal/my-git/capture-video/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lyx/personal/my-git/capture-video /home/lyx/personal/my-git/capture-video /home/lyx/personal/my-git/capture-video/build /home/lyx/personal/my-git/capture-video/build /home/lyx/personal/my-git/capture-video/build/CMakeFiles/Matimage.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Matimage.dir/depend
