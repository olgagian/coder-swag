//
//  ProductVC.swift
//  coder-swag
//
//  Created by ioannis giannakidis on 04/04/2018.
//  Copyright © 2018 ioannis giannakidis. All rights reserved.
//

import UIKit

class ProductVC: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
  
    
    @IBOutlet weak var productCollection : UICollectionView!
    private (set) public var products = [Product]()
    override func viewDidLoad() {
        super.viewDidLoad()
        productCollection.dataSource = self
        productCollection.delegate = self
        // Do any additional setup after loading the view.
    }

    
    func initProducts(category:Category) {
        products = DataService.instance.getProducts(forCategoryTitle: category.title)
        navigationItem.title = category.title
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell {
            let product = products[indexPath.row]
            cell.updateViews(product: product)
            return cell
        }else {
            return ProductCell()
        }
    }

}
