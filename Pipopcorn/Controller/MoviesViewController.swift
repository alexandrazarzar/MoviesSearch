//
//  MoviesViewController.swift
//  Pipopcorn
//
//  Created by Lucas Fernandez Nicolau on 25/03/20.
//  Copyright © 2020 Lucas Fernandez Nicolau. All rights reserved.
//

import UIKit

class MoviesViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var nameTextField: UITextField!
    var movies = [Movie]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTextField()
        setTableView()
    }
    
    @IBAction func searchButtonTouched(_ sender: UIButton) {
        dismissKeyboard()
        guard let text = nameTextField.text,
              text.trimmingCharacters(in: .whitespacesAndNewlines) != "" else { return }
        let name = text.trimmingCharacters(in: .whitespacesAndNewlines)
        
        searchMovies(named: name)
    }
    func searchMovies(named name: String) {
        // 1
        let queryStr = formatToQueryString(name)
        let fullURL = "\(ENDPOINT)=\(API_KEY)&s=\(queryStr)&type=movie"
        
        DispatchQueue.main.async {
            // 2
            guard let url = URL(string: fullURL),
                  let data = try? Data(contentsOf: url) else { return }
            
            // 3
            if let search = try? JSONDecoder().decode(Search.self, from: data) {
                // 4
                self.movies = search.movies
                self.tableView.reloadData()
            } else {
                print("Algo deu errado :(")
            }
        }
    }
    
    func formatToQueryString(_ string: String) -> String {
        return string.components(separatedBy: " ").joined(separator: "%20")
    }
    
    
    func setTextField() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        tapGesture.cancelsTouchesInView = false
        self.view.addGestureRecognizer(tapGesture)
        self.nameTextField.delegate = self
    }
    
    func setTableView() {
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.tableFooterView = UIView(frame: .zero)
    }
    
    @objc func dismissKeyboard() {
        nameTextField.resignFirstResponder()
    }
    
    @IBAction func infoButtonTouched(_ sender: UIBarButtonItem) {
        let alertController = UIAlertController(title: Alert.TITLE, message: Alert.MESSAGE, preferredStyle: .alert)
        let cancel = UIAlertAction(title: Alert.CANCEL_ACTION, style: .cancel, handler: nil)
        
        let openLicense = UIAlertAction(title: Alert.LICENSE_ACTION, style: .default) { _ in
            if let url = URL(string: "https://www.omdbapi.com/legal.htm") {
                UIApplication.shared.open(url)
            }
        }
        
        alertController.addAction(cancel)
        alertController.addAction(openLicense)
        
        navigationController?.present(alertController, animated: true, completion: nil)
    }
}
