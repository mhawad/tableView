//
//  VideolListScreen.swift
//  TableView
//
//  Created by Mirna Helmy on 12/7/22.
//https://www.youtube.com/watch?v=FtO5QT2D_H8
//https://www.youtube.com/watch?v=Xk2JVTIQGkk

import UIKit

class VideolListScreen: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    

    var videos: [Video] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        videos = createArray()
        tableView.delegate = self
        tableView.dataSource = self
   
        

        let button = UIButton()
        button.frame = CGRect(x: 120, y: 100, width: 150, height: 50)
        button.setTitle("Show Gallery", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = UIColor.blue
        button.layer.cornerRadius = 15
        view.addSubview(button)

        button.addTarget(self, action: #selector(VideolListScreen.showGallery), for: UIControl.Event.touchUpInside)


  
       
    }
    
    @IBAction func clickonHotStar(_ sender: Any) {
        let starvc = HomeViewController()
        navigationController?.pushViewController(starvc, animated: true)

    }

    
    @objc func showGallery() {
        let vc = ViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
 
    func createArray() -> [Video] {
        
        var tempVideos: [Video] = []
        
        let video1 = Video(image: UIImage(named: "beginner-first-app")! , title: "Your First App", details: "This is details about My First App")
        let video2 = Video(image: UIImage(named: "dev-setup")! , title: "My Dev", details: "This is details about My Dev")
        let video3 = Video(image: UIImage(named: "int-overview")! , title: "iOS Interview", details: "This is details about iOS Interview")
        let video4 = Video(image: UIImage(named: "ss-delegates")! , title: "Buttons in TableViews", details: "This is details about Buttons in Tableiews")
        let video5 = Video(image: UIImage(named: "ss-uipickerview-card")! , title: "UIPickerView Tutorial", details: "This is details about UIPickerView Tutorial")
        let video6 = Video(image: UIImage(named: "vlog-4")! , title: "Day in the Life", details: "This is details about Day in the Life")
       
        
        tempVideos.append(video1)
        tempVideos.append(video2)
        tempVideos.append(video3)
        tempVideos.append(video4)
        tempVideos.append(video5)
        tempVideos.append(video6)
        

        return tempVideos
    }
    
    
    @IBAction func gallery() {
        

        
                if let galleryViewController = storyboard?.instantiateViewController(identifier: "GalleryViewController") as? GalleryViewController {
                        navigationController?.pushViewController(galleryViewController, animated: true)
                        }
        
     

        }
   

}




extension VideolListScreen: UITableViewDelegate,  UITableViewDataSource {
    
    //configuring each cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let video = videos[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell") as! VideoCell
        cell.setVideo(video: video)
        
        return cell
    }
    
   
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //starting a secondview
        if let viewController = storyboard?.instantiateViewController(identifier: "DetailsViewController") as? DetailsViewController {
            
            viewController.labelDetails = videos[indexPath.row].title
            viewController.imageDetails = videos[indexPath.row].image
            viewController.textDetails = videos[indexPath.row].details
       
            navigationController?.pushViewController(viewController, animated: true)
        }
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return videos.count
      //  return 3
    }
    
    //number of rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    

    //header
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
      //  let view = tableView.dequeueReusableHeaderFooterView(withIdentifier: "sectionHeader") as! VideolListScreen
       // view.title.text = videos[indexPath.row].title
        //view.image.image = videos[indexPath.row].image
        
        return videos[section].title
    }
    
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20.0
    }
    
    //footer
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "End of \(videos[section].title)"
    }
    
    
    
    
    
}


//create another controller and show details when we click on each row
