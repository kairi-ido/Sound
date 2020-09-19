//
//  ViewController.swift
//  Sound
//
//  Created by 井戸海里 on 2020/09/18.
//

import UIKit

//音声・音楽取り扱い
import AVFoundation

class ViewController: UIViewController {
    //ドラムを表示する箱を作る
    @IBOutlet var drumButton:UIButton!
    //ピアノを表示する箱を作る
    @IBOutlet var pianoButton:UIButton!
    //ギターを表示する箱を作る
    @IBOutlet var guitarButton:UIButton!
    //ドラムのサウンドのファイルを読み込んでプレイヤーを作る
    let drumSoundPlayer = try!AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data )
    //ピアノのサウンドのファイルを読み込んでプレイヤーを作る
    let pianoSoundPlayer = try!AVAudioPlayer(data: NSDataAsset(name: "pianoSound")!.data )
    //ギターのサウンドのファイルを読み込んでプレイヤーを作る
    let guitarSoundPlayer = try!AVAudioPlayer(data: NSDataAsset(name: "guitarSound")!.data )
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //ドラムのタッチが開始された時に呼ばれる
    @IBAction func touchDownDrumButton(){
        //ドラムが鳴っている画像に切り替える
        drumButton.setImage(UIImage(named: "drumPlayingImage"), for: .normal)
        //ドラムの音を巻き戻す
        drumSoundPlayer.currentTime = 0
        //ドラムの音を再生する
        drumSoundPlayer.play()
        
    }
    //ドラムボタンの上でタッチが終わる時に呼ばれる
    @IBAction func touchUpDrumButton(){
        
        //ドラムが鳴っていない画像に切り替える
        drumButton.setImage(UIImage(named: "drumImage"), for: .normal)
        
    }
    
    //ピアノのタッチが開始された時に呼ばれる
    @IBAction func touchDownPianoButton(){
        //ピアノが鳴っている画像に切り替える
        pianoButton.setImage(UIImage(named: "pianoPlayingImage"), for: .normal)
        //ピアノの音を巻き戻す
        pianoSoundPlayer.currentTime = 0
        //ピアノの音を再生する
        pianoSoundPlayer.play()
        
    }
    //ピアノボタンの上でタッチが終わる時に呼ばれる
    @IBAction func touchUpPianoButton(){
        
        //ピアノが鳴っていない画像に切り替える
        pianoButton.setImage(UIImage(named: "pianoImage"), for: .normal)
        
    }
    //ギターのタッチが開始された時に呼ばれる
    @IBAction func touchDownGuitarButton(){
        //ギターが鳴っている画像に切り替える
        guitarButton.setImage(UIImage(named: "guitarPlayingImage"), for: .normal)
        //ギターの音を巻き戻す
        guitarSoundPlayer.currentTime = 0
        //ギターの音を再生する
        guitarSoundPlayer.play()
        
    }
    //ギターボタンの上でタッチが終わる時に呼ばれる
    @IBAction func touchUpGuitarButton(){
        
        //ギターが鳴っていない画像に切り替える
        guitarButton.setImage(UIImage(named: "guitarImage"), for: .normal)
        
    }


}

