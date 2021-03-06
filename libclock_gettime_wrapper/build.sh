#!/bin/bash
# *****************************************************************
# (C) Copyright IBM Corp. 2021. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# *****************************************************************

${GCC} -shared -fPIC -fno-builtin -c clock_gettime.c

${GCC} -shared -fPIC -Wl,--version-script clock_gettime.map -o libclock_gettime-2.17.so clock_gettime.o -lc

cp libclock_gettime-2.17.so ${PREFIX}/lib/
