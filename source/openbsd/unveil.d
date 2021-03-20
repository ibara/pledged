/**
 * The unveil() system call removes visibility of the entire
 * filesystem from all other filesystem-related system calls,
 * except for the specified paths and permissions.
 */

module openbsd.unveil;

version (OpenBSD):
extern (C):
nothrow:
@nogc:

/**
 * unveil parts of a restricted filesystem view
 * Return values: 0 for success, -1 for failure
 */
int unveil(const char *path, const char *permissions);
