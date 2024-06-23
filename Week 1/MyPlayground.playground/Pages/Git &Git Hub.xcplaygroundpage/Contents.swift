//: [Previous](@previous)

//: ## Part 1: Git & GitHub

/*:
2.Here are some Git and GitHub commands we usually use in software development. Please explain the meanings and use cases of them.
 
**a. git status**
 
  Check the status of the depository.
 
   **b. git diff**
 
  To see the difference(actual changes) between the newest version and the last version that I've made.
 
   **c. git add**
 
  Add the modified content to staging area.
 
   **d. git reset**
 
  To reverse the step which had been made.
 
   **e. git commit**
 
  Commit the content which in staging area to store in depository.
 
   **f. git log**
 
  Look up commit history(commit,commit message,author name, time) of the directory.
 
   **g. git branch**
 
  To create a new branch.
 
   **h. git merge**
  
  Integrate branches' information.
 
   **i. git push [ repo_name ] [ branch_name ]**
 
  Push local depository to the remote one on GitHub.
 
   **j. git remote**
 
 Used to create and delete the connction to another depositpry.
  
   **k. fork**
 
  Copy file to my own page, where I can revise it. Simulate to git clone.
 
   **l. (Advanced) git rebase**
 
 Git will copy the branch where you're at(HEAD), then combine the information and connect to the branch where you want to rebase on.
  
   **m. (Advanced) git cherry-pick**
 
 Git will copy the commit you want and add them to the branch you want to add the commit in.
  
   **n. (Advanced) git reflog**
 
 Where you can check the commit history. The information include SHA-1 number and commit message.
  
   **o. (Advanced) git tag**
 
 To add tag on the commit. There are two kinds of tag, lightweight tag(usually for personal use) and annotated tag(more information in it, include tagger and time).
  
*/
/*:
3.Please describe how to establish a GitHub repo and how to upload the local projects to GitHub. Try to explain your answers with as much detail as possible.
 
__There are two ways to establish a GitHub repo:__
1. 在本地新建一個目錄 >
 
   使用git init 初始化該目錄，建立數據庫 >
 
   到GitHub建立一個數據庫，複製該數據庫的HTTP或SSH網址 >
 
   用git remote add origin __GitHub上連線網址__ 建立遠端連線 >
 
   用git push --set-upstream origin mian main將數據庫連線至遠端伺服器(GitHub)，使本地伺服器也能持續追蹤遠端伺服器(第一次連線會需要先到GitHub產生一組新的token作為登入的密碼）
 
   
2. 在GitHub直接建立一個新的儲存庫 > 利用git clone將儲存庫利用HTTP/SSH連結連接至本地資料庫
 
__How to upload the local projects to GitHub__
 

   在已經建立了GitHub repo的情況下並已與遠端伺服器連線 >
 
   用git add先將資料送至暫存區 >
 
   用git commit將暫存區的資料保存到本機的儲存庫 >
   
   使用git status確認資料皆以儲存到儲存庫中 >
 
   使用git push將儲存庫中的資料上傳至所選的分支
 
 
*/

//: [Next](@next)
