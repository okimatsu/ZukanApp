import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var lavel: UILabel!
    
    var info: AnimalInfo!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = info.name
        lavel.text = info.description
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    


}
