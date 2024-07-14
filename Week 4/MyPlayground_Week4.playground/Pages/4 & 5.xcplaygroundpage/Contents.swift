//: [Previous](@previous)

//: 4. (Advanced) Please complete the following function that prints a pyramid made of asterisks.

func printPyramid(layers: Int) {
    for layer in 1...layers {
        
        let space = String(repeating: " ", count: layers - layer)
         
        let asterisks = String(repeating: "*", count: (layer * 2) - 1)
                
            
        print(space + asterisks)
        
    }

}
printPyramid(layers: 5)


//: 5. (Optional) Do you have any App ideas that you are interested in and want to develop? List them along with a brief description (2 sentences at most), and no need to consider the availability, required techniques and business models at all.

/*: 1. Life is good
 
     讓每日任務像遊戲一樣，有獎勵和懲罰機制，讓升等不只是在遊戲中，輔助使用者完成自己訂下的任務。
 
      希望裡面會有自己的角色（隨著每日任務的破解成長）、已達成及未達成任務模板、支援AR和環境互動、夥伴模板、獎勵可以和商店合作。

 2. How are you today?
 
      是一款可以記錄情緒處理方法的APP，讓情緒困境來臨時不再無所事從。
 
      可以記錄新發現的想法或方法，每天會顯示曾經記錄下來的方法或想法，提供使用者做回想和提醒，有鼓勵模板（可以內建雞湯或打氣的話），也有分類功能。
 */

//: [Next](@next)
