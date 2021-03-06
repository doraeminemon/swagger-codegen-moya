//
// FakeTargets.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class FakeTargets {
    /**
    To test \"client\" model
    - PATCH /fake
    - To test \"client\" model
    - examples: 
        [{contentType=application/json, example={
  "client" : "aeiou"
}}]
     
    - parameter body: (body) client model 
    */

    struct testClientModelTarget: APITargetType {

        let path: String = "/fake"
        let method = Moya.Method(rawValue: "PATCH")

        let body: Client
        
        var parameters: Parameters? {
            var compositeParameters: CompositeParameters = CompositeParameters()

            var bodyParams: Parameters = [:]
            bodyParams["body"] = body
            compositeParameters.bodyParameters = bodyParams

            return compositeParameters.toParameters()
        }
    }
    /**
    Fake endpoint for testing various parameters 假端點 偽のエンドポイント 가짜 엔드 포인트 
    - POST /fake
    - Fake endpoint for testing various parameters 假端點 偽のエンドポイント 가짜 엔드 포인트 
    - BASIC:
        - type: basic
        - name: http_basic_test
     
    - parameter number: (form) None 
    - parameter double: (form) None 
    - parameter patternWithoutDelimiter: (form) None 
    - parameter byte: (form) None 
    - parameter integer: (form) None (optional)
    - parameter int32: (form) None (optional)
    - parameter int64: (form) None (optional)
    - parameter float: (form) None (optional)
    - parameter string: (form) None (optional)
    - parameter binary: (form) None (optional)
    - parameter date: (form) None (optional)
    - parameter dateTime: (form) None (optional)
    - parameter password: (form) None (optional)
    - parameter callback: (form) None (optional)
    */

    struct testEndpointParametersTarget: APITargetType {

        let path: String = "/fake"
        let method = Moya.Method(rawValue: "POST")

        let number: Double
        let double: Double
        let patternWithoutDelimiter: String
        let byte: Data
        let integer: Int32?
        let int32: Int32?
        let int64: Int64?
        let float: Float?
        let string: String?
        let binary: Data?
        let date: Date?
        let dateTime: Date?
        let password: String?
        let callback: String?
        
        var parameters: Parameters? {
            var compositeParameters: CompositeParameters = CompositeParameters()

            var formParams: Parameters = [:]
            formParams["integer"] = integer
            formParams["int32"] = int32
            formParams["int64"] = int64
            formParams["number"] = number
            formParams["float"] = float
            formParams["double"] = double
            formParams["string"] = string
            formParams["pattern_without_delimiter"] = patternWithoutDelimiter
            formParams["byte"] = byte
            formParams["binary"] = binary
            formParams["date"] = date
            formParams["dateTime"] = dateTime
            formParams["password"] = password
            formParams["callback"] = callback
            compositeParameters.formParameters = formParams

            return compositeParameters.toParameters()
        }
    }
    /**
    To test enum parameters
    - GET /fake
    - To test enum parameters
     
    - parameter enumFormStringArray: (form) Form parameter enum test (string array) (optional)
    - parameter enumFormString: (form) Form parameter enum test (string) (optional, default to -efg)
    - parameter enumHeaderStringArray: (header) Header parameter enum test (string array) (optional)
    - parameter enumHeaderString: (header) Header parameter enum test (string) (optional, default to -efg)
    - parameter enumQueryStringArray: (query) Query parameter enum test (string array) (optional)
    - parameter enumQueryString: (query) Query parameter enum test (string) (optional, default to -efg)
    - parameter enumQueryInteger: (query) Query parameter enum test (double) (optional)
    - parameter enumQueryDouble: (form) Query parameter enum test (double) (optional)
    */

    struct testEnumParametersTarget: APITargetType, HeaderTargetConvertible {

        let path: String = "/fake"
        let method = Moya.Method(rawValue: "GET")

        let enumFormStringArray: [String]?
        let enumFormString: String?
        let enumHeaderStringArray: [String]?
        let enumHeaderString: String?
        let enumQueryStringArray: [String]?
        let enumQueryString: String?
        let enumQueryInteger: Int32?
        let enumQueryDouble: Double?
        
        var parameters: Parameters? {
            var compositeParameters: CompositeParameters = CompositeParameters()

            var headerParams: [String: String] = [:]
            headerParams["enum_header_string_array"] = enumHeaderStringArray
            headerParams["enum_header_string"] = enumHeaderString
            compositeParameters.headerParameters = headerParams

            var queryParams: Parameters = [:]
            queryParams["enum_query_string_array"] = enumQueryStringArray
            queryParams["enum_query_string"] = enumQueryString
            queryParams["enum_query_integer"] = enumQueryInteger
            compositeParameters.queryParameters = queryParams

            var formParams: Parameters = [:]
            formParams["enum_form_string_array"] = enumFormStringArray
            formParams["enum_form_string"] = enumFormString
            formParams["enum_query_double"] = enumQueryDouble
            compositeParameters.formParameters = formParams

            return compositeParameters.toParameters()
        }
    }
}
