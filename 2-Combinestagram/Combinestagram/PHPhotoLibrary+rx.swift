//
//  PHPhotoLibrary+rx.swift
//  Combinestagram
//
//  Created by Batuhan Gobekli on 18.01.2021.
//  Copyright © 2021 Underplot ltd. All rights reserved.
//

import Foundation
import Photos
import RxSwift

extension PHPhotoLibrary {
    static var authorized: Observable<Bool> {
        return Observable.create { observer in
            DispatchQueue.main.async {
                if authorizationStatus() == .authorized {
                    observer.onNext(true)
                    observer.onCompleted()
                }else {
                    observer.onNext(false)
                    requestAuthorization { newStatus in
                        observer.onNext(newStatus == .authorized)
                        observer.onCompleted()
                    }
                } }
            return Disposables.create()
        }
    }
}
