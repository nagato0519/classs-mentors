//
//  FeedViewController.swift
//  EducateMates
//
//  Created by Nagato Kadoya on 12/6/21.
//

import UIKit

private let reuseIdentifier = "Cell"

class FeedViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tableView: UITableView!
    
    var posts = [Post("aaa", "Nagato", "I need help for the assignment!"), Post("aaa", "Nagato", "I need help for the assignment!"),.Post("aaa", "Nagato", "I need help for the assignment!"),Post("aaa", "Nagato", "I need help for the assignment!"),Post("aaa", "Nagato", "I need help for the assignment!"),Post("aaa", "Nagato", "I need help for the assignment!")]

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }


    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 0
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
    
        // Configure the cell
    
        return cell
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Postcell") as! Postcell
        let post = posts[indexPath.row]
        
        
        cell.userLabel.text = post.name
        cell.captionLabel.text = post.body
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }


}
