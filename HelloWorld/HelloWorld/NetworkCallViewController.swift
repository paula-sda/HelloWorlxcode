import UIKit

class NetworkCallViewController: UIViewController {
    
    @IBOutlet weak var listaPosts: UITableView!
    
    private let dataSource = PostsDataSource()
    private var posts: [Post] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Listado de Posts"
        listaPosts.dataSource = self
        listaPosts.delegate = self
        
        // Ajuste automático de altura de celda
        listaPosts.rowHeight = UITableView.automaticDimension
        listaPosts.estimatedRowHeight = 100
        
        loadPosts()
    }
    
    private func loadPosts() {
        
        dataSource.fetchPosts { [weak self] result in
            guard let self = self else { return }

            DispatchQueue.main.async {
                switch result {
                case .success(let posts):
                    self.posts = posts
                    self.listaPosts.reloadData()
                case .failure(let error):
                    print("Error al obtener posts:", error)
                }
            }
        }
    }
}

extension NetworkCallViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PostCell", for: indexPath) as! PostTableViewCell

        let post = posts[indexPath.row]
        
        // Muestra el título y el cuerpo del post
        
        cell.title.text = post.title
        cell.descripcion.text = post.body
        
        //sin estilo de celda
        /*
        cell.textLabel?.text = post.title
        cell.textLabel?.numberOfLines = 0
        cell.detailTextLabel?.text = post.body
        cell.detailTextLabel?.numberOfLines = 0
         */
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }

    
}
