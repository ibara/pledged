/**
 * The pledge() system call forces the current process into a
 * restricted-service operating mode. A process which attempts a
 * restricted operation is killed with an uncatchable SIGABRT,
 * delivering a core file if possible.
 */

module openbsd.pledge;

version (OpenBSD):
extern (C):
nothrow:
@nogc:

/**
 * restrict system operations
 * Return values: 0 for success, -1 for failure
 */
int pledge(const char *promises, const char *execpromises);
