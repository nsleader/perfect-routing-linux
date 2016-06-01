# perfect-routing-linux

Run commands:

    swift build
    .build/debug/server
    
Log:

    Load libs from: ./PerfectLibraries
    Init Site module
    Add url routes
    /+h
    /foo
	    /*
		    /baz+h

    Loaded libSite.so
    Starting HTTP server on 0.0.0.0:8181 with document root ./webroot/
    
    
Open http://0.0.0.0:8181/

**Result: The file /index.html was not found.**
