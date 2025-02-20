// Copyright 2019-2023 Lawrence Livermore National Security, LLC and other
// Variorum Project Developers. See the top-level LICENSE file for details.
//
// SPDX-License-Identifier: MIT

#include <stdio.h>

#include <variorum.h>

#ifdef SECOND_RUN
static inline double do_work(int input)
{
    int i;
    double result = (double)input;

    for (i = 0; i < 100000; i++)
    {
        result += i * result;
    }

    return result;
}
#endif

int main(int argc, char **argv)
{
    int ret;
#ifdef SECOND_RUN
    int i;
    int size = 1E3;
    double x = 0.0;
#endif

    ret = variorum_print_power();
    if (ret != 0)
    {
        printf("Print power failed!\n");
    }
#ifdef SECOND_RUN
    for (i = 0; i < size; i++)
    {
        x += do_work(i);
    }
    ret = variorum_print_power();
    if (ret != 0)
    {
        printf("Print power failed!\n");
    }
#endif
    return ret;
}
