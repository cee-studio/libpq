#include <stdio.h>
#include <stdlib.h>
#include <assert.h>

#include "libpq-fe.h"

void exit_nicely(PGconn *conn)
{
  PQfinish(conn);
  exit(EXIT_SUCCESS);
}

int main(int argc, char *argv[]) {
  /* Make a connection to the DB */
  PGconn *conn = PQconnectdb("dbname = ababa");

  /* Check to see that the backend connection was succesfully made */
  if (CONNECTION_OK != PQstatus(conn)) {
    fprintf(stderr, "Connection to database failed: %s", \
        PQerrorMessage(conn));
    exit_nicely(conn);
  }

  return EXIT_SUCCESS;
}
