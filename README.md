# logstash-aws
The `Dockerfile` on this folder creates an image to create and automate Logstash tasks to automate MySQL indexing into
AWS ElasticSearch. Intended to be ran as a command and scheduled by using some sort of cron, it will naturally die
after completion. Don't expect the container to stay up and running.

It basically runs a task against the ES host.

Be sure to have network access to the ES cluster from wherever you are running the image, otherwise it will fail.

## Environment Variables
You need to feed the environment variables specified in the `conf/opt/es.conf` file to make it work.
