//
//  ViewController.swift
//  collectionViewXIB
//
//  Created by Macbook on 07/08/2021.
//

import UIKit
struct Person {
    var fName : String
    var profileImage: UIImage
}

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource, UISearchResultsUpdating {
    

    @IBOutlet weak var collectionVIew: UICollectionView!
    var personArray = [Person]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionVIew.dataSource = self
        collectionVIew.delegate = self
        self.collectionVIew.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cell")
        
        personArray = getUsers()
        searchConfiguration()
    }
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        personArray.count    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let myCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? CollectionViewCell else {
            return UICollectionViewCell()
        }
        myCell.labelName.text = personArray[indexPath.row].fName
        myCell.profileImage.image = personArray[indexPath.row].profileImage
        myCell.profileImage.tintColor = .random
       // myCell.backgroundColor = .random
        return myCell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let myvc = self.storyboard?.instantiateViewController(identifier: "detailViewController") as! detailViewController
        myvc.myPerson = personArray[indexPath.row]
        self.navigationController?.pushViewController(myvc, animated: true)
    }
    
    func searchConfiguration(){
        
        let searchController = UISearchController(searchResultsController: nil)
        searchController.searchBar.placeholder = "Search"
        self.title = "Contact"
        navigationItem.searchController = searchController
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.definesPresentationContext = true
        
    
    
}
    
    
    func updateSearchResults(for searchController: UISearchController) {
        guard let searchText = searchController.searchBar.text else{ return}
        if(searchText.isEmpty){
            personArray = getUsers()
        }else{
            
            personArray = getUsers().filter({
                
                $0.fName.lowercased().contains(searchText.lowercased())
            })
        }
        collectionVIew.reloadData()
    }
    }
    
//MARK:- Extensions

extension UIColor{
    static var random: UIColor{
        return UIColor(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1), alpha: 1)
    }
}
extension ViewController {
    
        func getUsers()->[Person]{
            return(
                [Person(fName: "Krishna", profileImage: UIImage(systemName: "heart.fill")!),
                 Person(fName: "Yogesh", profileImage: UIImage(systemName: "person.fill")!),
                 Person(fName: "Pratik", profileImage: UIImage(systemName: "person.circle.fill")!),
                 Person(fName: "Hemal", profileImage: UIImage(systemName: "person.fill")!),
                 Person(fName: "Krishna", profileImage: UIImage(systemName: "heart.fill")!),
                 Person(fName: "Krishna", profileImage: UIImage(systemName: "heart.fill")!),
                 Person(fName: "Krishna", profileImage: UIImage(systemName: "heart.fill")!),
                 Person(fName: "Krishna", profileImage: UIImage(systemName: "heart.fill")!),
                 Person(fName: "Krishna", profileImage: UIImage(systemName: "heart.fill")!),
                 Person(fName: "Krishna", profileImage: UIImage(systemName: "heart.fill")!),
                 Person(fName: "Krishna", profileImage: UIImage(systemName: "heart.fill")!),
                 Person(fName: "Krishna", profileImage: UIImage(systemName: "heart.fill")!),
                 Person(fName: "Krishna", profileImage: UIImage(systemName: "heart.fill")!),
                 Person(fName: "Krishna", profileImage: UIImage(systemName: "heart.fill")!),
                 Person(fName: "Krishna", profileImage: UIImage(systemName: "heart.fill")!),
                 Person(fName: "Krishna", profileImage: UIImage(systemName: "heart.fill")!),
                 Person(fName: "Krishna", profileImage: UIImage(systemName: "heart.fill")!),
                  Person(fName: "Yogesh", profileImage: UIImage(systemName: "person.fill")!),
                  Person(fName: "Pratik", profileImage: UIImage(systemName: "person.circle.fill")!),
                  Person(fName: "Hemal", profileImage: UIImage(systemName: "person.fill")!),
                  Person(fName: "Krishna", profileImage: UIImage(systemName: "heart.fill")!),
                  Person(fName: "Krishna", profileImage: UIImage(systemName: "heart.fill")!),
                  Person(fName: "Krishna", profileImage: UIImage(systemName: "heart.fill")!),
                  Person(fName: "Krishna", profileImage: UIImage(systemName: "heart.fill")!),
                  Person(fName: "Krishna", profileImage: UIImage(systemName: "heart.fill")!),
                  Person(fName: "Krishna", profileImage: UIImage(systemName: "heart.fill")!),
                  Person(fName: "Krishna", profileImage: UIImage(systemName: "heart.fill")!),
                  Person(fName: "Krishna", profileImage: UIImage(systemName: "heart.fill")!),
                  Person(fName: "Krishna", profileImage: UIImage(systemName: "heart.fill")!),
                  Person(fName: "Krishna", profileImage: UIImage(systemName: "heart.fill")!),
                  Person(fName: "Krishna", profileImage: UIImage(systemName: "heart.fill")!),
                  Person(fName: "Krishna", profileImage: UIImage(systemName: "heart.fill")!),
                  Person(fName: "Krishna", profileImage: UIImage(systemName: "heart.fill")!),
                  Person(fName: "Yogesh", profileImage: UIImage(systemName: "person.fill")!),
                  Person(fName: "Pratik", profileImage: UIImage(systemName: "person.circle.fill")!),
                  Person(fName: "Hemal", profileImage: UIImage(systemName: "person.fill")!),
                  Person(fName: "Krishna", profileImage: UIImage(systemName: "heart.fill")!),
                  Person(fName: "Krishna", profileImage: UIImage(systemName: "heart.fill")!),
                  Person(fName: "Krishna", profileImage: UIImage(systemName: "heart.fill")!),
                  Person(fName: "Krishna", profileImage: UIImage(systemName: "heart.fill")!),
                  Person(fName: "Krishna", profileImage: UIImage(systemName: "heart.fill")!),
                  Person(fName: "Krishna", profileImage: UIImage(systemName: "heart.fill")!),
                  Person(fName: "Krishna", profileImage: UIImage(systemName: "heart.fill")!),
                  Person(fName: "Krishna", profileImage: UIImage(systemName: "heart.fill")!),
                  Person(fName: "Krishna", profileImage: UIImage(systemName: "heart.fill")!),
                  Person(fName: "Krishna", profileImage: UIImage(systemName: "heart.fill")!),
                  Person(fName: "Krishna", profileImage: UIImage(systemName: "heart.fill")!),
                  Person(fName: "Krishna", profileImage: UIImage(systemName: "heart.fill")!)
                 
                 
                
                
                ])
             
        
        }}
extension ViewController:UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width/3 - 5, height: collectionView.frame.height/5 - 5)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        5 //height
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        5 // width
    }
}
