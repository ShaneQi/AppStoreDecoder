import Dispatch
import Foundation
import SwiftyJSON

let semaphore = DispatchSemaphore(value: 0)

func getIcon(withId appId: String) {
	let session = URLSession(configuration: .default)
	session.dataTask(with: URL(string: "https://itunes.apple.com/lookup?id=\(appId)")!) { data, _, error in
		if let resultData = data {
			let json = JSON(data: resultData)
			if let resultCount = json["resultCount"].int {
				if resultCount < 1 {
					print("Didn't find any result.")
				} else if let iconUrlString = json["results", 0, "artworkUrl512"].string {
					print(iconUrlString)
				} else {
					print("Unknown error. code: 0")
				}
			} else {
				print("Unknown error. code: 1")
			}
		} else if let error = error {
			print(String(describing: error))
		} else {
			print("Unknown error. code: 2")
		}
		semaphore.signal()
	}.resume()
}

let arguments = CommandLine.arguments
if arguments.count < 2 {
	print("Please give app id as argument. (like \"904071710\")")
} else {
	getIcon(withId: arguments[1])
	semaphore.wait()
}
