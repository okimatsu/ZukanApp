import UIKit

struct AnimalInfo {
    var name: String
    var description: String
}

class ViewController: UIViewController, UITableViewDataSource {
    
    
  /*  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let selectedRow = TableView.indexPathForSelectedRow {
            let controller = segue.description as! DetailViewController
            controller.info = items[selectedRow.row]
        }
    } */
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let selectedRow = TableView.indexPathForSelectedRow {
            let controller = segue.destination as! DetailViewController
            controller.info = items[selectedRow.row]
        }
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let cell: UITableViewCell! = tableView.dequeueReusableCell(withIdentifier: "NameCell")
      //tableView.dequeueReusableCell(withIdentifier: "NameCell")  as UITableViewCell
      //let cell: UITableViewCell! = tableView.dequeueReusableCell(withIdentifier: "NameView")
        let item = items[indexPath.row]
        cell.textLabel?.text = item.name
        return cell
    }
    
    @IBOutlet weak var TableView: UITableView!
    let items = [
 /* AnimalInfo(name: "1", description: "1"),
    AnimalInfo(name: "2", description: "2"),
    AnimalInfo(name: "3", description: "3"),
    AnimalInfo(name: "4", description: "4"),
    AnimalInfo(name: "5", description: "5")
    ]  */
        
        AnimalInfo(name: "えんぴつ", description: "鉛筆（えんぴつ）とは、筆記具・文房具の一種。顔料を細長く固めた芯（鉛筆芯）を軸（鉛筆軸）ではさんで持ち易くしたものである紙に筆記するために使われる。鉛筆の片側の末端部分を削って露出させた芯を紙に滑らせると、紙との摩擦で芯が細かい粒子になり、紙に顔料の軌跡を残すことで筆記される。"),
        AnimalInfo(name: "消しゴム", description: "消しゴム（けしゴム）とは、主に鉛筆などで書かれたものを消去するときに使う文房具。従来は天然ゴムが主成分だったためそう呼ばれる。現在はプラスチック製が主流の為字消しとも呼ばれるが、消しゴムとも呼ばれている。英語ではrubber（ラバー、《米》eraser《イレイサー》）である。直方体のものが最も一般的であるが、ボールペンのような形のノック式の消しゴムなども販売されている。また、色調は一般に白色のものが多いが黒色など色付きのものもある。"),
        AnimalInfo(name: "じょうぎ", description: "定規（じょうぎ、定木）は、直線や曲線、角を引くために用いる文房具。物を切断する時にあてがって用いることもある。素材は主に合成樹脂、アルミニウムやステンレスなどの金属、竹など伸縮や狂いの少ない素材が用いられる。"),
        AnimalInfo(name: "ボールペン", description: "ボールペンは、ペン先に小さな鋼球を内蔵し運筆とともに回転することで軸内のインクを滲出させて筆記する構造を持つ筆記具[1]。精密機械であり、文房具の一種。"),
        AnimalInfo(name: "シャープペンシル", description: "シャープペンシル（和製英語: sharp pencil）とは、細い黒鉛の芯を繰り出して用いる機械式筆記具である。略称で「シャープ」、「シャーペン」とも呼ばれ、「シャープペン」の表記も一般に見られる。")]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    
        
        TableView.dataSource = self

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }

    
    
    
    
    
}

