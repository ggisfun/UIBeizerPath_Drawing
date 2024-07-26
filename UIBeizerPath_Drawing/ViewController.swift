//
//  ViewController.swift
//  UIBeizerPath_Drawing
//
//  Created by Adam Chen on 2024/7/27.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //背景
        let backgroundPath = UIBezierPath(rect: CGRect(x: 40, y: 100, width: 316, height: 450))
        let backgroundLayer = CAShapeLayer()
        backgroundLayer.path = backgroundPath.cgPath
        backgroundLayer.fillColor = UIColor(red: 255/255, green: 217/255, blue: 0/255, alpha: 1).cgColor
        view.layer.addSublayer(backgroundLayer)
                
        //頭髮
        let hairPath = UIBezierPath()
        hairPath.move(to: CGPoint(x: 172, y: 155))
        hairPath.addCurve(to: CGPoint(x: 241, y: 142), controlPoint1: CGPoint(x: 140, y: 113), controlPoint2: CGPoint(x: 224, y: 80))
        hairPath.addCurve(to: CGPoint(x: 291, y: 183), controlPoint1: CGPoint(x: 270, y: 119), controlPoint2: CGPoint(x: 306, y: 149))
        hairPath.addCurve(to: CGPoint(x: 320, y: 238), controlPoint1: CGPoint(x: 322, y: 177), controlPoint2: CGPoint(x: 340, y: 215))
        hairPath.addCurve(to: CGPoint(x: 329, y: 292), controlPoint1: CGPoint(x: 349, y: 237), controlPoint2: CGPoint(x: 359, y: 276))
        hairPath.addCurve(to: CGPoint(x: 331, y: 341), controlPoint1: CGPoint(x: 355, y: 299), controlPoint2: CGPoint(x: 356, y: 331))
        hairPath.addCurve(to: CGPoint(x: 305, y: 381), controlPoint1: CGPoint(x: 351, y: 362), controlPoint2: CGPoint(x: 330, y: 390))
        
        let hairLayer = CAShapeLayer()
        hairLayer.path = hairPath.cgPath
        hairLayer.lineWidth = 3
        hairLayer.strokeColor = UIColor.black.cgColor
        hairLayer.fillColor = UIColor(red: 129/255, green: 45/255, blue: 0/255, alpha: 1).cgColor
        view.layer.addSublayer(hairLayer)
        
        //藍色裙子
        let skirtPath = UIBezierPath()
        skirtPath.move(to: CGPoint(x: 77, y: 393))
        skirtPath.addLine(to: CGPoint(x: 63, y: 501))
        skirtPath.addQuadCurve(to: CGPoint(x: 309, y: 502), controlPoint: CGPoint(x: 182, y: 525))
        skirtPath.addLine(to: CGPoint(x: 295, y: 389))
        
        let skirtLayer = CAShapeLayer()
        skirtLayer.path = skirtPath.cgPath
        skirtLayer.lineWidth = 2
        skirtLayer.strokeColor = UIColor.black.cgColor
        skirtLayer.fillColor = UIColor(red: 144/255, green: 158/255, blue: 255/255, alpha: 1).cgColor
        view.layer.addSublayer(skirtLayer)
        
        //黃色上衣
        let clothesPath = UIBezierPath()
        clothesPath.move(to: CGPoint(x: 77, y: 393))
        clothesPath.addLine(to: CGPoint(x: 71, y: 440))
        clothesPath.addQuadCurve(to: CGPoint(x: 301, y: 442), controlPoint: CGPoint(x: 192, y: 465))
        clothesPath.addLine(to: CGPoint(x: 295, y: 389))
        
        let clothesLayer = CAShapeLayer()
        clothesLayer.path = clothesPath.cgPath
        clothesLayer.lineWidth = 2
        clothesLayer.strokeColor = UIColor.black.cgColor
        clothesLayer.fillColor = UIColor(red: 255/255, green: 255/255, blue: 131/255, alpha: 1).cgColor
        view.layer.addSublayer(clothesLayer)
        
        //綠色外套
        let jacketPath = UIBezierPath()
        jacketPath.move(to: CGPoint(x: 65, y: 386))
        jacketPath.addLine(to: CGPoint(x: 49, y: 432))
        jacketPath.addLine(to: CGPoint(x: 61, y: 436))
        jacketPath.addLine(to: CGPoint(x: 59, y: 454))
        jacketPath.addQuadCurve(to: CGPoint(x: 121, y: 458), controlPoint: CGPoint(x: 84, y: 460))
        jacketPath.addLine(to: CGPoint(x: 121, y: 408))
        jacketPath.addLine(to: CGPoint(x: 109, y: 396))
        jacketPath.close()
        
        jacketPath.move(to: CGPoint(x: 270, y: 394))
        jacketPath.addLine(to: CGPoint(x: 255, y: 404))
        jacketPath.addLine(to: CGPoint(x: 254, y: 460))
        jacketPath.addQuadCurve(to: CGPoint(x: 308, y: 456), controlPoint: CGPoint(x: 282, y: 463))
        jacketPath.addLine(to: CGPoint(x: 307, y: 445))
        jacketPath.addLine(to: CGPoint(x: 324, y: 440))
        jacketPath.addLine(to: CGPoint(x: 305, y: 387))
        jacketPath.addLine(to: CGPoint(x: 295, y: 388))
        jacketPath.close()
        
        jacketPath.move(to: CGPoint(x: 61, y: 436))
        jacketPath.addLine(to: CGPoint(x: 66, y: 419))
        jacketPath.close()
        
        jacketPath.move(to: CGPoint(x: 76, y: 397))
        jacketPath.addQuadCurve(to: CGPoint(x: 72, y: 424), controlPoint: CGPoint(x: 54, y: 409))
        
        jacketPath.move(to: CGPoint(x: 307, y: 445))
        jacketPath.addLine(to: CGPoint(x: 303, y: 427))
        jacketPath.close()
        
        jacketPath.move(to: CGPoint(x: 300, y: 429))
        jacketPath.addQuadCurve(to: CGPoint(x: 298, y: 399), controlPoint: CGPoint(x: 312, y: 410))
        
        let jacketLayer = CAShapeLayer()
        jacketLayer.path = jacketPath.cgPath
        jacketLayer.lineWidth = 2
        jacketLayer.strokeColor = UIColor.black.cgColor
        jacketLayer.fillColor = UIColor(red: 200/255, green: 255/255, blue: 185/255, alpha: 1).cgColor
        view.layer.addSublayer(jacketLayer)
        
        //頭部輪廓
        let headPath = UIBezierPath()
        headPath.move(to: CGPoint(x: 64, y: 372))
        headPath.addQuadCurve(to: CGPoint(x: 172, y: 156), controlPoint: CGPoint(x: 65, y: 188))
        headPath.addQuadCurve(to: CGPoint(x: 304, y: 350), controlPoint: CGPoint(x: 298, y: 145))
        headPath.addCurve(to: CGPoint(x: 305, y: 374), controlPoint1: CGPoint(x: 323, y: 350), controlPoint2: CGPoint(x: 323, y: 370))
        headPath.addLine(to: CGPoint(x: 306, y: 387))
        headPath.addLine(to: CGPoint(x: 295, y: 389))
        headPath.addLine(to: CGPoint(x: 64, y: 372))
        headPath.move(to: CGPoint(x: 64, y: 364))
        headPath.addCurve(to: CGPoint(x: 65, y: 342), controlPoint1: CGPoint(x: 50, y: 360), controlPoint2: CGPoint(x: 50, y: 344))
        
        let headLayer = CAShapeLayer()
        headLayer.path = headPath.cgPath
        headLayer.lineWidth = 2
        headLayer.strokeColor = UIColor.black.cgColor
        headLayer.fillColor = UIColor(red: 255/255, green: 229/255, blue: 216/255, alpha: 1).cgColor
        view.layer.addSublayer(headLayer)
        
        //嘴唇輪廓
        let mouthPath = UIBezierPath()
        mouthPath.move(to: CGPoint(x: 75, y: 372))
        mouthPath.addQuadCurve(to: CGPoint(x: 287, y: 370), controlPoint: CGPoint(x: 186, y: 384))
        mouthPath.addCurve(to: CGPoint(x: 295, y: 389), controlPoint1: CGPoint(x: 302, y: 370), controlPoint2: CGPoint(x: 305, y: 378))
        mouthPath.addQuadCurve(to: CGPoint(x: 269, y: 394), controlPoint: CGPoint(x: 284, y: 392))
        mouthPath.addQuadCurve(to: CGPoint(x: 110, y: 395), controlPoint: CGPoint(x: 183, y: 401))
        mouthPath.addQuadCurve(to: CGPoint(x: 74, y: 391), controlPoint: CGPoint(x: 90, y: 394))
        mouthPath.addCurve(to: CGPoint(x: 75, y: 372), controlPoint1: CGPoint(x: 56, y: 387), controlPoint2: CGPoint(x: 60, y: 368))
        mouthPath.close()
        //嘴唇中間線條
        let mouthPath2 = UIBezierPath()
        mouthPath2.move(to: CGPoint(x: 288, y: 380))
        mouthPath2.addQuadCurve(to: CGPoint(x: 193, y: 387), controlPoint: CGPoint(x: 243, y: 387))
        mouthPath2.addQuadCurve(to: CGPoint(x: 173, y: 388), controlPoint: CGPoint(x: 183, y: 398))
        mouthPath2.addQuadCurve(to: CGPoint(x: 76, y: 382), controlPoint: CGPoint(x: 120, y: 388))
        
        mouthPath.append(mouthPath2)
        
        let mouthLayer = CAShapeLayer()
        mouthLayer.path = mouthPath.cgPath
        mouthLayer.lineWidth = 2
        mouthLayer.strokeColor = UIColor.black.cgColor
        mouthLayer.fillColor = UIColor(red: 255/255, green: 186/255, blue: 255/255, alpha: 1).cgColor
        view.layer.addSublayer(mouthLayer)
                
        //眼睛輪廓
        let aDegree = Double.pi / 180
        let eyePath = UIBezierPath(arcCenter: CGPoint(x: 171, y: 288), radius: 11, startAngle: aDegree * 0, endAngle: aDegree * 360, clockwise: true)
        eyePath.close()
        
        let leftEyeLayer = CAShapeLayer()
        leftEyeLayer.path = eyePath.cgPath
        leftEyeLayer.lineWidth = 1.5
        leftEyeLayer.strokeColor = UIColor.black.cgColor
        leftEyeLayer.fillColor = UIColor.white.cgColor
        view.layer.addSublayer(leftEyeLayer)
        
        //鏡相翻轉
        let rightEyeLayer = CAShapeLayer()
        rightEyeLayer.path = eyePath.cgPath
        let boundingBox = eyePath.cgPath.boundingBox
        rightEyeLayer.bounds = boundingBox
        rightEyeLayer.position = CGPoint(x: boundingBox.midX, y: boundingBox.midY)
        let transform = CGAffineTransform(scaleX: 1, y: 1).translatedBy(x: boundingBox.width, y: 0)
        rightEyeLayer.setAffineTransform(transform)
        rightEyeLayer.fillColor = UIColor.white.cgColor
        rightEyeLayer.strokeColor = UIColor.black.cgColor
        rightEyeLayer.lineWidth = 1.5
        view.layer.addSublayer(rightEyeLayer)
        
        //左眼中心
        let leftEyeCenterPath = UIBezierPath(arcCenter: CGPoint(x: 173, y: 288), radius: 2.5, startAngle: 0, endAngle: .pi * 2, clockwise: true)
        let leftEyeCenterLayer = CAShapeLayer()
        leftEyeCenterLayer.path = leftEyeCenterPath.cgPath
        view.layer.addSublayer(leftEyeCenterLayer)
        
        //右眼中心
        let rightEyeCenterPath = UIBezierPath(arcCenter: CGPoint(x: 191, y: 288), radius: 2.5, startAngle: 0, endAngle: .pi * 2, clockwise: true)
        let rightEyeCenterLayer = CAShapeLayer()
        rightEyeCenterLayer.path = rightEyeCenterPath.cgPath
        view.layer.addSublayer(rightEyeCenterLayer)
        
        
        //臉頰
        let cheekPath = UIBezierPath()
        cheekPath.move(to: CGPoint(x: 134, y: 313))
        cheekPath.addLine(to: CGPoint(x: 140, y: 308))
        cheekPath.move(to: CGPoint(x: 145, y: 314))
        cheekPath.addLine(to: CGPoint(x: 152, y: 307))
        cheekPath.move(to: CGPoint(x: 224, y: 316))
        cheekPath.addLine(to: CGPoint(x: 230, y: 308))
        cheekPath.move(to: CGPoint(x: 236, y: 316))
        cheekPath.addLine(to: CGPoint(x: 243, y: 310))
        
        let cheekLayer = CAShapeLayer()
        cheekLayer.path = cheekPath.cgPath
        cheekLayer.lineWidth = 2
        cheekLayer.strokeColor = UIColor(red: 226/255, green: 88/255, blue: 88/255, alpha: 1).cgColor
        view.layer.addSublayer(cheekLayer)
        
        //額頭
        let foreheadPath = UIBezierPath()
        foreheadPath.move(to: CGPoint(x: 187, y: 254))
        foreheadPath.addQuadCurve(to: CGPoint(x: 202, y: 251), controlPoint: CGPoint(x: 194, y: 248))
        
        let foreheadLayer = CAShapeLayer()
        foreheadLayer.path = foreheadPath.cgPath
        foreheadLayer.lineWidth = 2
        foreheadLayer.strokeColor = UIColor.black.cgColor
        foreheadLayer.fillColor = UIColor.clear.cgColor
        view.layer.addSublayer(foreheadLayer)
        
        //手
        let handPath = UIBezierPath()
        handPath.move(to: CGPoint(x: 51, y: 433))
        handPath.addCurve(to: CGPoint(x: 59, y: 449), controlPoint1: CGPoint(x: 41, y: 435), controlPoint2: CGPoint(x: 45, y: 447))
        handPath.addLine(to: CGPoint(x: 61, y: 436))
        handPath.close()
        
        handPath.move(to: CGPoint(x: 307, y: 446))
        handPath.addLine(to: CGPoint(x: 308, y: 455))
        handPath.addCurve(to: CGPoint(x: 322, y: 441), controlPoint1: CGPoint(x: 318, y: 458), controlPoint2: CGPoint(x: 330, y: 448))
        handPath.close()
        
        let handLayer = CAShapeLayer()
        handLayer.path = handPath.cgPath
        handLayer.lineWidth = 2
        handLayer.strokeColor = UIColor.black.cgColor
        handLayer.fillColor = UIColor(red: 255/255, green: 228/255, blue: 191/255, alpha: 1).cgColor
        view.layer.addSublayer(handLayer)
        
        //腳
        let leftLegPath = UIBezierPath()
        leftLegPath.move(to: CGPoint(x: 154, y: 513))
        leftLegPath.addLine(to: CGPoint(x: 160, y: 534))
        leftLegPath.addQuadCurve(to: CGPoint(x: 184, y: 533), controlPoint: CGPoint(x: 171, y: 537))
        leftLegPath.addLine(to: CGPoint(x: 184, y: 513))
        leftLegPath.close()
        
        let leftLegLayer = CAShapeLayer()
        leftLegLayer.path = leftLegPath.cgPath
        leftLegLayer.lineWidth = 2
        leftLegLayer.strokeColor = UIColor.black.cgColor
        leftLegLayer.fillColor = UIColor(red: 255/255, green: 228/255, blue: 191/255, alpha: 1).cgColor
        view.layer.addSublayer(leftLegLayer)
        
        //鏡相翻轉
        let rightFootLayer = CAShapeLayer()
        rightFootLayer.path = leftLegPath.cgPath
        let boundingBox2 = leftLegPath.cgPath.boundingBox
        rightFootLayer.bounds = boundingBox2
        rightFootLayer.position = CGPoint(x: boundingBox2.midX, y: boundingBox2.midY)
        let transform2 = CGAffineTransform(scaleX: -1, y: 1).translatedBy(x: -boundingBox2.width , y: 0)
        rightFootLayer.setAffineTransform(transform2)
        rightFootLayer.fillColor = UIColor(red: 255/255, green: 228/255, blue: 191/255, alpha: 1).cgColor
        rightFootLayer.strokeColor = UIColor.black.cgColor
        rightFootLayer.lineWidth = 2
        view.layer.addSublayer(rightFootLayer)
        
        //襪子
        let leftSockPath = UIBezierPath()
        leftSockPath.move(to: CGPoint(x: 156, y: 520))
        leftSockPath.addLine(to: CGPoint(x: 160, y: 534))
        leftSockPath.addQuadCurve(to: CGPoint(x: 184, y: 533), controlPoint: CGPoint(x: 171, y: 537))
        leftSockPath.addLine(to: CGPoint(x: 184, y: 520))
        leftSockPath.addQuadCurve(to: CGPoint(x: 156, y: 520), controlPoint: CGPoint(x: 172, y: 523))
        leftSockPath.close()
        
        let leftSockLayer = CAShapeLayer()
        leftSockLayer.path = leftSockPath.cgPath
        leftSockLayer.lineWidth = 2
        leftSockLayer.strokeColor = UIColor.black.cgColor
        leftSockLayer.fillColor = UIColor.white.cgColor
        view.layer.addSublayer(leftSockLayer)
        
        //鏡相翻轉
        let rightSockLayer = CAShapeLayer()
        rightSockLayer.path = leftSockPath.cgPath
        let boundingBox3 = leftSockPath.cgPath.boundingBox
        rightSockLayer.bounds = boundingBox3
        rightSockLayer.position = CGPoint(x: boundingBox3.midX, y: boundingBox3.midY)
        let transform3 = CGAffineTransform(scaleX: -1, y: 1).translatedBy(x: -boundingBox3.width , y: 0)
        rightSockLayer.setAffineTransform(transform3)
        rightSockLayer.fillColor = UIColor.white.cgColor
        rightSockLayer.strokeColor = UIColor.black.cgColor
        rightSockLayer.lineWidth = 2
        view.layer.addSublayer(rightSockLayer)
        
        //鞋子
        let shoesPath = UIBezierPath()
        shoesPath.move(to: CGPoint(x: 160, y: 534))
        shoesPath.addCurve(to: CGPoint(x: 184, y: 533), controlPoint1: CGPoint(x: 140, y: 550), controlPoint2: CGPoint(x: 180, y: 554))
        shoesPath.addQuadCurve(to: CGPoint(x: 160, y: 534), controlPoint: CGPoint(x: 170, y: 536))
        shoesPath.close()
        
        shoesPath.move(to: CGPoint(x: 184, y: 533))
        shoesPath.addCurve(to: CGPoint(x: 208, y: 534), controlPoint1: CGPoint(x: 189, y: 556), controlPoint2: CGPoint(x: 227, y: 550))
        shoesPath.addQuadCurve(to: CGPoint(x: 184, y: 533), controlPoint: CGPoint(x: 200, y: 537))
        
        let shoesLayer = CAShapeLayer()
        shoesLayer.path = shoesPath.cgPath
        shoesLayer.lineWidth = 2
        shoesLayer.strokeColor = UIColor.black.cgColor
        shoesLayer.fillColor = UIColor(red: 247/255, green: 246/255, blue: 255/255, alpha: 1).cgColor
        view.layer.addSublayer(shoesLayer)
        
        
    }


}

#Preview {
    UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController()!
}

