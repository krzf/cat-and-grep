#include "Mygrep_lib.h"

int main(int argc, char *argv[]) {
  opt Options = {0};
  parcer(argc, argv, &Options);
  char *pattern = argv[optind];
  while (optind < argc) {
    reader(Options, pattern, argv[optind]);
    optind++;
  }
}