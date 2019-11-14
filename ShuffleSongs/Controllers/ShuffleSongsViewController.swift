//
//  ViewController.swift
//  ShuffleSongs
//
//  Created by Jean Carlos on 10/18/19.
//  Copyright © 2019 Jean Carlos. All rights reserved.
//

import UIKit

class ShuffleSongsViewController: UIViewController {
    
    // MARK: - Properties
    var songsList = [SongsResults]()
    
    // MARK: - Outlets
    @IBOutlet weak var btnShuffleSongs: UIBarButtonItem!
    @IBOutlet weak var tableViewSongs: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
//        loadSongs()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        configureNavigationBar()
    }
    
    // MARK: - Privates Methods
    private func configureTableView() {
        tableViewSongs.delegate = self
        tableViewSongs.dataSource = self
        tableViewSongs.register(UINib(nibName: Strings.cellIdentifier, bundle: nil), forCellReuseIdentifier: Strings.cellIdentifier)
    }
    private func configureNavigationBar() {
        let imageTitle = UIImageView(frame: CGRect(x: 0, y: 0, width: 210, height: 25))
        
        btnShuffleSongs.tintColor = .white
        imageTitle.contentMode = .scaleAspectFit
        imageTitle.image = UIImage(named: Strings.appName)
        navigationItem.titleView = imageTitle
    }
    
    private func shuffleSongs() {
        songsList.shuffle()
    }
    
    private func loadSongs() {
        let apiClient = ApiClient(url: URL(string: Strings.urlString)!, callBack: {success in}, service: <#T##ServiceType#>)
        apiClient.run()
    }
    
    // MARK: - Actions
    @IBAction func ShuffleSongs(_ sender: Any) {
        shuffleSongs()
        tableViewSongs.reloadData()
    }
    
}

extension ShuffleSongsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Clicou")
    }
}

extension ShuffleSongsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songsList.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Strings.cellIdentifier, for: indexPath) as? ShuffleSongsTableViewCell else {
            return UITableViewCell()
        }
        
        cell.artistName.text = songsList[indexPath.row].artistName
        cell.trackName.text = songsList[indexPath.row].trackName
        
        let url = URL(string: songsList[indexPath.row].artworkUrl)
        let data = try? Data(contentsOf: url!)
        if let imageData = data {
            let image = UIImage(data: imageData)
            cell.artwork.image = image
        }else {
            cell.artwork.image = UIImage(named: "SomeEmptyImage")
        }
        
        return cell
    }
}
