package org.example

class Utils implements Serializable {
    def steps

    Utils(steps) {
        this.steps = steps
    }

    def printFancyMessage(String message) {
        steps.echo "✨ ${message} ✨"
    }
}