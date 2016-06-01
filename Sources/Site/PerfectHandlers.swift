

import PerfectLib

public func PerfectServerModuleInit() {
    print("Init Site module")
    addURLRoutes()
}

public func addURLRoutes() {
    print("Add url routes")
    Routing.Routes["/"] = indexHandler
    Routing.Routes["/foo/*/baz"] = echoHandler
    
    print("\(Routing.Routes.description)")
    
}

func indexHandler(request: WebRequest, response: WebResponse) {
    
    print("Index")
    
    do {
        let webRoot = request.documentRoot
        try mustacheRequest(request: request, response: response, handler: IndexPageHandler(), path: webRoot + "/index.mustache")
    } catch {
        response.setStatus(code: 500, message: "Server Error")
        response.appendBody(string: "\(error)")
    }
    
    response.requestCompleted()
}

func echoHandler(request: WebRequest, response: WebResponse) {
    response.appendBody(string: "Echo handler: You accessed path \(request.requestURI!) with variables \(request.urlVariables) params \(request.queryParams)")
    response.requestCompleted()
}