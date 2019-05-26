//
//  Validation.swift
//  AnuragTesting
//
//  Created by PSPL iOS on 27/04/16.
//  Copyright © 2016 PSPL iOS. All rights reserved.
//

import Foundation

public class Validation{
    
    class func isValidEmail(testStr:String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        let result = emailTest.evaluate(with: testStr)
        return result
    }
    
    class func isAlphanumeric(testStr:String) -> Bool {
        let Alphanumeric = "[A-Za-z0-9]"
        let AlphanumericTest = NSPredicate(format:"SELF MATCHES %@", Alphanumeric)
        let result = AlphanumericTest.evaluate(with: testStr)
        return result
    }
    
    class func validateAccount(value: String) -> Bool {
        let PHONE_REGEX = "^\\d{2}\\d{3}\\d{5}$"
        let phoneTest = NSPredicate(format: "SELF MATCHES %@", PHONE_REGEX)
        let result =  phoneTest.evaluate(with: value)
        return result
    }
    class  func validatePassword(value: String) -> Bool {
        let PHONE_REGEX = "^.*[^A-Za-z0-9].*"
        let phoneTest = NSPredicate(format: "SELF MATCHES %@", PHONE_REGEX)
        let result =  phoneTest.evaluate(with: value)
        return result
    }

    class func validatePhone(value: String) -> Bool {
        let PHONE_REGEX = "^\\d{3}\\d{3}\\d{4}$"
        let phoneTest = NSPredicate(format: "SELF MATCHES %@", PHONE_REGEX)
        let result =  phoneTest.evaluate(with: value)
        return result
    }
    
    class func validatePincode(value: String) -> Bool {
        if(value.count==6) {
            return true
        }else {
            return false
        }
    }
    
    class func validateLengthPassword(value:String)->Bool{
        if(value.count<6 || value.count>12){
            return false
        }else{
            return true
        }
    }
    
    class func validOTP(value:String)->Bool{
        let PHONE_REGEX = "^\\d{3}\\d{3}$"
        let phoneTest = NSPredicate(format: "SELF MATCHES %@", PHONE_REGEX)
        let result =  phoneTest.evaluate(with: value)
        return result
    }
    
    class func stringToDate(value:String)->String{
        let strTime = value
        let formatter = DateFormatter()
        formatter.dateFormat = "dd-MM-yyyy"
        let date=formatter.date(from: strTime)
        formatter.dateStyle=DateFormatter.Style.medium
        return formatter.string(from: date!)
    }
    
    class func validateLandlineNumber(value:String)->Bool{
        if(value.count<10){
            return false
        }else{
            return true
        }
    }
}
