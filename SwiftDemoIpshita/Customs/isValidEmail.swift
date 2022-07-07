//
//  EmailValidation.swift
//  SwiftDemoip
//
//  Created by Pradeep Chaturvedi on 05/07/22.
//

import SwiftUI

func isValidEmail(testStr:String) -> Bool {

    print("validate emilId: \(testStr)")
    let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
    let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
    let result = emailTest.evaluate(with:testStr)
    if result{
        print("Email is correct")
    }else{
        print("Please enter email in correct format")
    }
return result
}
