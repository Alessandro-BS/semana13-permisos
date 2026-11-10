import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {

    let locationManager = CLLocationManager()
    let btnCompartirUbicacion = UIButton(type: .system)

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        locationManager.delegate = self
    }

    func setupUI() {
        view.backgroundColor = .white
        btnCompartirUbicacion.setTitle("Compartir ubicación", for: .normal)
        btnCompartirUbicacion.titleLabel?.font = UIFont.systemFont(ofSize: 25)
        btnCompartirUbicacion.addTarget(self, action: #selector(verificarPermisoUbicacion), for: .touchUpInside)

        btnCompartirUbicacion.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(btnCompartirUbicacion)
        NSLayoutConstraint.activate([
            btnCompartirUbicacion.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            btnCompartirUbicacion.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }

    @objc func verificarPermisoUbicacion() {
        let status = locationManager.authorizationStatus
        switch status {
        case .notDetermined:
            // Solicitud de permiso en tiempo de ejecución por primera vez
            locationManager.requestWhenInUseAuthorization()
        case .authorizedWhenInUse, .authorizedAlways:
            iniciarCompartirUbicacion()
        case .denied, .restricted:
            mostrarAlertaConfiguracion()
        @unknown default:
            break
        }
    }

    func iniciarCompartirUbicacion() {
        print("Compartiendo ubicación en tiempo real...")
    }

    func mostrarAlertaConfiguracion() {
        let alert = UIAlertController(title: "Permiso requerido",
                                      message: "El permiso de ubicación fue denegado. Habilítalo en configuración.",
                                      preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Aceptar", style: .default, handler: nil))
        present(alert, animated: true)
    }
}
