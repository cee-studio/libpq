#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <assert.h>

#include "libpq-fe.h"


int main() 
{
  const char *conninfo = \
      "host = tuffi.db.elephantsql.com "
      "user = ffiuqzvz "
      "password = M7AOD_TFnZSg70vROqaITY05gCRNtiw8 "
      "dbname = ffiuqzvz";
  fprintf(stderr, "%s\n", conninfo);

  /* Make a connection to the DB */
  PGconn *conn = PQconnectdb(conninfo);

  /* Check to see that the backend connection was succesfully made */
  if (CONNECTION_OK != PQstatus(conn)) {
    fprintf(stderr, "Connection to database failed: %s", \
        PQerrorMessage(conn));
    PQfinish(conn);
    return EXIT_FAILURE;
  }

  sleep(100); // check at elephantsql.com if connection is active

  PQfinish(conn);
  return EXIT_SUCCESS;
}
