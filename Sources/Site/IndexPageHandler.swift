//
//  IndexHandler.swift
//  Learning
//
//  Created by IVAN CHIRKOV on 01.06.16.
//
//

import PerfectLib

struct IndexPageHandler: MustachePageHandler {

    func valuesForResponse(context contxt: MustacheEvaluationContext, collector: MustacheEvaluationOutputCollector) throws -> MustacheEvaluationContext.MapType {
        var values = MustacheEvaluationContext.MapType()
        values["message"] = "Hi!"
        return values
    }
    
}
