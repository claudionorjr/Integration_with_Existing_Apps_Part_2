//
//  ViewController.swift
//  Teste_App
//
//  Created by C84396A on 21/11/20.
//  Copyright © 2020 C84396A. All rights reserved.
//

import UIKit
import React


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //Faça qualquer configuração adicional após carregar a visualização.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Elimine quaisquer recursos que possam ser recriados.
    }

        // essa função vai disparar quando nosso botão que criaremos no Main.storyboard
    @IBAction func buttonToShowReactNativeView(_ sender: UIButton) {
      
        // descomente a linha abaixo caso esteja em produçao.
        //let jsBundleLocation = Bundle.main.url(forResource: "main", withExtension: "jsbundle")

        // Aqui é a onde nosso projeto faz ligação com o nosso yarn start que executamos la no começo do tutorial.
      let jsBundleLocation = URL(string: "http://localhost:8081/index.bundle?platform=ios")
    
        // aqui voce poderá mandar props para o seu React Native
        // let mockData:NSDictionary = [:]
        
        // Exemplo abaixo de como seria caso queira passar props para o React Native.
//      let mockData:NSDictionary = ["scores":
//          [
//              ["name":"Alex", "value":"42"],
//              ["name":"Joel", "value":"10"]
//          ]
//      ]

        // é aqui que nossa View do react native é criada.
      let rootView = RCTRootView(
          bundleURL: jsBundleLocation!,
          moduleName: "Test_RN_App", // Caso não tenha mudado o appName em seu AppRegistry, aqui irá o nome do seu projeto RN.
          initialProperties: nil,
          launchOptions: nil
      )
        
        // e aqui nossa View será criada para ser renderizada
      let vc = UIViewController()
      vc.view = rootView
      self.present(vc, animated: true, completion: nil)
    }
}

