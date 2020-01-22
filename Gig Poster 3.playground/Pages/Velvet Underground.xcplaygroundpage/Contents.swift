//: # Gig Poster 3
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport

/*:
 Each image is exactly 400 pixels wide by 600 pixels tall.
 
 Your goal is to precisely reproduce this image:
 
 ![velvet-underground-no-grid](VelvetUnderground.png "Velvet Underground")
 ![velvet-underground-with-grid](VelvetUnderground-with-grid.png "Velvet Underground")
 
 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * conditionals (making decisions with ``if`` statements)
 * iteration (use of loops to repeat statements)
 
 You may use the color constants created below to obtain the correct colors.
 
 Remember that you can refer to the [Canvas class documentation](https://www.russellgordon.ca/canvasgraphics/documentation/classes/canvas), as needed.
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)
// no borders
canvas.drawShapesWithBorders = false

// fill in black background
canvas.fillColor = Color(hue: 0, saturation: 0, brightness: 0, alpha: 100)
canvas.drawRectangle(at: Point(x:0, y:0), width: 400, height: 600)

//// fill and line color = purple
//canvas.fillColor = Color(hue: 309, saturation: 78, brightness: 64, alpha: 100)
//canvas.lineColor = Color(hue: 309, saturation: 78, brightness: 64, alpha: 100)

// loops for coordinates of shapes
for y in stride (from: 0, to: 400 , by: 80){
    for x in stride (from: 0, to: 400 , by: 80){
        // if statement to determine colour (only the middle ones where y and x coordinates are equal)
        if y - x == 0 {
            // fill the shapes off white
            canvas.fillColor = Color(hue: 83, saturation: 4, brightness: 89, alpha: 100)
            canvas.lineColor = Color(hue: 83, saturation: 4, brightness: 89, alpha: 100)
        } else {
            // fill the shapes purple
            canvas.fillColor = Color(hue: 309, saturation: 78, brightness: 64, alpha: 100)
            canvas.lineColor = Color(hue: 309, saturation: 78, brightness: 64, alpha: 100)
        }
        
        // draw the rectangles
        canvas.drawRectangle(at: Point(x:x, y:y), width: 20, height: 60)
        canvas.drawRectangle(at: Point(x:y,y:x), width: 60, height: 20)
        
        // draw the diagonal lines
        canvas.drawLine(from: Point(x: x+20, y: y+20), to: Point(x: x+60, y: y+60), lineWidth: 15)
    }
}

// draw the text and change text colour to white
canvas.textColor = Color(hue: 83, saturation: 4, brightness: 89, alpha: 100)
canvas.drawText(message: "the velvet underground", at: Point(x:10, y:400), size: 30)

// paragraph text
canvas.drawText(message: "first appearance in london" + "\n" + "the london college of printing", at: Point(x:10, y: 520), size: 8)
canvas.drawText(message: "with spring and pollyfloskin" + "\n" + "plus the great western light show", at: Point(x:150 , y: 520), size: 8)
canvas.drawText(message: "thursday" + "\n" + "october 14 1971 / 8 pm", at: Point(x:300 , y: 520), size: 8)

// draw the lines and fill line color off white
canvas.lineColor = Color(hue: 83, saturation: 4, brightness: 89, alpha: 100)
   canvas.drawLine(from: Point(x: 0, y: 460), to: Point(x: 400, y: 460), lineWidth: 3)
   canvas.drawLine(from: Point(x: 0, y: 550), to: Point(x: 400, y: 550), lineWidth: 3)

/*:
 ## Use Source Control
 
 Remember to commit and push your work before 12:05 PM on Wednesday, January 22, 2020, please.
 
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas

