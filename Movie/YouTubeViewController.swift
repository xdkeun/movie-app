import UIKit
import WebKit

class YouTubeViewController: UIViewController {
    
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var searchText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Add target for searchButton
        searchButton.addTarget(self, action: #selector(searchButtonTapped), for: .touchUpInside)
    }
    
    @objc func searchButtonTapped() {
        // Get the search query from the searchLabel
        let searchText = searchText.text ?? ""
        
        // Create the YouTube search URL with the query
        let baseURL = "https://www.youtube.com/results?"
        let query = searchText.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
        let searchURL = URL(string: "\(baseURL)search_query=\(query)")!
        
        // Load the search URL in the webView
        let request = URLRequest(url: searchURL)
        webView.load(request)
    }
    
    // ...
    // Rest of the class
}
