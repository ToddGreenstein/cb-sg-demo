# cb-sg-demo
Couchbase Server and Sync Gateway environment using Docker for the Couchbase "todo" sample application.  

## What this repo does
- Builds a ready to use microservice environment using docker-compose
- It has a couchbase server service
- It has a sync gateway service
- It includes a config.json for sync gateway that is ready for using the "todo" sample application.  

## REQUIREMENTS
- **Clone this repo**
- **Run the containers using docker-compose**
docker-compose up --build -d

## Connecting a local mobile IDE instance
- **This was designed for use with [Couchbase TODO IOS](https://github.com/couchbaselabs/mobile-training-todo/tree/master/ios)**   
- To use the sync gateway in this environment with the todo application, use the following URL   
http://localhost:4984/sg_test/
