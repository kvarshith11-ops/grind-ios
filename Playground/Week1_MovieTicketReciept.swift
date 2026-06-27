//
//  Week2_Basics.swift
//  
//
//  Created by Krishna Varshith on 27/06/26.
//

import Foundation

func ticketPricing(age: Int) -> Double {
    switch age{
    case ..<12:
        return 120.0
    case 12..<60:
        return 200.0
    default:
        return 150.0
    }
}

func discountPercentage(discountCode: String?) -> Double {
    guard let discountCode = discountCode else { return 0.0 }
    if discountCode == "MEMBER10" {
        return 10.0
    } else if discountCode == "MEMBER20" {
        return 20.0
    } else {
        print("Invalid Discount Code")
        return 0.0
    }
}

func totalBill(ticketPrice: Double, numberOfTickets: Int, discountPercent: Double) -> Double {
    let totalTicketsPrice = ticketPrice * Double(numberOfTickets)
    let discountAmount = totalTicketsPrice * (discountPercent / 100.0)
    let totalBillPrice = totalTicketsPrice - discountAmount
    return totalBillPrice

}

func movieTicketReceipt(title: String, person: String, age: Int, numberOfTickets: Int, discountCode: String?) {
    
    guard numberOfTickets > 0 else {
        print("Invalid Ticket Count")
        return
    }
    print("---  Movie Ticket Receipt ---")
    print("Movie: \(title)")
    print("Customer: \(person)")
    print("Tickets: \(numberOfTickets)")
    let ticketPrice = ticketPricing(age: age)
    print("Price per ticket: ₹\(ticketPrice)")
    let discountPercent = discountPercentage(discountCode: discountCode)
    print("Discount: \(discountPercent)%")
    let totalBill = totalBill(ticketPrice: ticketPrice, numberOfTickets: numberOfTickets, discountPercent: discountPercent)
    print("Total: ₹\(totalBill)")
    print("-----------------------------")
}

movieTicketReceipt(title: "Pushpa 2", person: "Krishna", age: 23, numberOfTickets: 3, discountCode: "MEMBER10")
movieTicketReceipt(title: "Pushpa 2", person: "Krishna", age: 23, numberOfTickets: 3, discountCode: nil)
