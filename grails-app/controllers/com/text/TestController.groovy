package com.text

import grails.converters.JSON

class TestController {

    def index() {
        def rtn
        if(params.num1) {
            rtn = [msg:params.num1.toInteger() + params.num2.toInteger()]
            withFormat {
                '*' { render rtn as JSON}
            }
        }

    }
}
