#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <assert.h>

#include "libpq-fe.h"


int main() 
{
  fprintf(stderr, "Please execute as ./exec < conn.config\n");

  char conninfo[1024];

  /* Get whole conn.config file contents */
  char *cat = conninfo;
  char info[128];
  while (fgets(info, sizeof(info), stdin))
    cat += snprintf(cat, sizeof(conninfo) - (cat-conninfo), "%s", info);
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
  fprintf(stderr, "Succesfully established connection to DB\n");

  sleep(100); // check at elephantsql.com if connection is active

  PQfinish(conn);
  return EXIT_SUCCESS;
}
