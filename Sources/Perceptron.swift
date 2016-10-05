//
// Created by Eli Bradley on 10/4/16.
//

import Foundation

class Perceptron {
    var weights: [Float]
    var learningRate: Float

    init(numWeights: Int, learningRate: Float) {
        self.weights = [Float](repeating: 0.0, count: numWeights)
        self.learningRate = learningRate

        for i in 0 ..< weights.count {
            weights[i] = Float(random(Int(Int32.max))) / Float(Int32.max / 2) - 1.0
        }
    }

    func feedForward(_ inputs: [Float]) -> Int {
        var sum: Float = 0

        for i in 0 ..< weights.count {
            sum += weights[i] * inputs[i]
        }

        return activate(sum)
    }

    func activate(_ sum: Float) -> Int {
        if sum > 0 {
            return 1
        } else {
            return -1
        }
    }

    func train(inputs: [Float], desired: Int) {
        let guess: Int = feedForward(inputs)
        let error: Float = Float(desired) - Float(guess)

        for i in 0 ..< weights.count {
            weights[i] += learningRate * error * inputs[i]
        }
    }

    var description: String {
        return "Weights are: \(weights)" +
                "Learning Rate is: \(learningRate)"
    }
}
