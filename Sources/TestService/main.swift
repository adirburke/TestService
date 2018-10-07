import SwiftGRPC
import SwiftProtobuf
import Dispatch


var taskProvider = TaskProvider()
var server = ServiceServer(address: "localhost:9999", serviceProviders: [taskProvider])
server.shouldLogRequests = true
server.start()

dispatchMain()
