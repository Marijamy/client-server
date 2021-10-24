//
//  FotoFriendsCollectionViewController.swift
//  AksenovaMV
//
//  Created by Klepa on 05.05.2021.
//

import UIKit

private let reuseIdentifier = "Cell"

class FotoFriendsCollectionViewController: UICollectionViewController {
    
    let friendsService = FriendsAPI()
    
    let FromArrayToFoto = "FotoSegue"
    
    private var fotoArray = [UIImage]()
    
    func configure(fotoArray: [UIImage]) {
        self.fotoArray = fotoArray
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        self.collectionView.register(UINib(nibName: "FotoCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: reuseIdentifier)
        
        friendsService.getFriends { friends in
            
            print("получили друзей")
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return self.fotoArray.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as? CustomCollectionViewCell
        else {return UICollectionViewCell()}
    
        cell.configure(image: fotoArray[indexPath.item])
    
        return cell
    }

    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: FromArrayToFoto, sender: self)
    }
    
    
  /*  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == FromArrayToFoto {
            guard let dst = segue.destination as? FotoFriendsCollectionViewController,
                  let image = sender as? UIImage else {return}
            
            dst.image = image
        }
    } */
    
    

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */
    
}
