//: 2. There are several methods defined in the UITableViewDataSource protocol. Which methods are called by the system after we manually call reloadData() of a table view and what are their sequences? Please describe in as much detail as possible.

// cellForRowAt will be called after we manually call reloadData(), cause cellForRowAt is use to know what the cell should consist of and what to display. Once we update the content of a cell, and reload it, cellForRowAt will read the new content and then display in cell.

