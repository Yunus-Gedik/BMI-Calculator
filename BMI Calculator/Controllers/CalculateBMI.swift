import UIKit

class CalculateBMI: UIViewController {


    @IBOutlet weak var height: UILabel!
    @IBOutlet weak var weight: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!

    var bmiBrain = BMIBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func heightChanged(_ sender: UISlider) {
        height.text = String(format: "%.2f m", sender.value)
    }
    
    
    @IBAction func weightChanged(_ sender: UISlider) {
        weight.text = String(format:"%.0f kg", sender.value)
    }
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let h = heightSlider.value
        let w = weightSlider.value
        bmiBrain.calculateBMI(h, w)
        performSegue(withIdentifier: "calculateResult" , sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "calculateResult"){
            let obj = segue.destination as! ResultBMI
            obj.bmiText = bmiBrain.getBmiValue()
            obj.adviceText = bmiBrain.getAdvice()
            obj.resultColor = bmiBrain.getColor()
        }
    }
    
}
