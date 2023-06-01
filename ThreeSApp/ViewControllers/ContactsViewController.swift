//
//  ContactsViewController.swift
//  ThreeSApp
//
//  Created by Vsevolod Lashin on 01.06.2023.
//

import UIKit

final class ContactsViewController: UIViewController {
    
    @IBOutlet private var phoneButton: UIButton!
    @IBOutlet private var mapButton: UIButton!
    @IBOutlet private var videoButton: UIButton!
    @IBOutlet var defectButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneButton.layer.cornerRadius = phoneButton.frame.height / 2
        mapButton.layer.cornerRadius = mapButton.frame.height / 2
        videoButton.layer.cornerRadius = videoButton.frame.height / 2
        defectButton.layer.cornerRadius = defectButton.frame.height / 2
    }

    @IBAction private func phoneButtonTapped() {
        makePhoneCall()
    }
    
    @IBAction private func addressButtonPressed() {
        openMaps()
    }
    
    @IBAction func videoButtonPressed() {
        openVideo()
    }
    
    @IBAction func defectButtonPressed() {
        showDefect()
    }
    
    private func makePhoneCall() {
        guard let number = URL(string: "tel://" + "+79276033324") else { return }
        UIApplication.shared.open(number)
    }
    
    private func openMaps() {
        let address = "Novo-Sadovaya street, 149A, Samara, Russia"
        let formattedAddress = address.replacingOccurrences(of: " ", with: "+")
        
        if let url = URL(string: "http://maps.apple.com/?address=\(formattedAddress)") {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
    private func openVideo() {
        guard let url = URL(string: "https://www.youtube.com/watch?v=1qtkPthuSNU") else { return }
        UIApplication.shared.open(url)
    }
    
    private func showDefect() {
        guard let url = URL(string: "https://sikkens.paintdefectid.com/ru-RU/") else { return }
        UIApplication.shared.open(url)
    }
    
}
