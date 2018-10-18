//
//  ViewController.swift
//  iOS L07（新）
//
//  Created by 朱博宇 on 2018/10/11.
//  Copyright © 2018年 朱博宇. All rights reserved.
//

import UIKit




class ViewController: UIViewController {

    struct stack
    {
        var a = [Int] ()
        var top = -1
    }
    var SomeStack = stack ()
    struct nstack
    {
        var a = [String] ()
        var ntop = -1
    }
    var SomeNstack = nstack ()
    func npush(ch:String){
        SomeNstack.ntop += 1
        SomeNstack.a[SomeNstack.ntop] = ch
    }
    func push(ch:Int){
        SomeStack.top += 1
        SomeStack.a[SomeStack.top] = ch
    }
    func pop(ns:nstack)->String{
        return ns.a[ns.ntop]
    }
    func npop(s:nstack)->String{
        return s.a[s.ntop]
    }
    func isnumber(ch:String)->Bool{
        if "0"<=ch&&ch<="9" {
            return true
        }else{
            return false
        }
    }
    func iscmpty(ns:nstack)->Bool{
        if ns.ntop == -1{
            return true
        }else{
            return false
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

