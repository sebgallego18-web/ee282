##EE282 H2

###Sebastian Gallego


##**Question 1.**

Imagine that you are going to do work in a directory called "old directory" you made before taking ee282, and it was very disorganized. What commands would you use to...

1. Display all the files in that old directory? 
	* **Answer**: You would use ```ls``` to list the contents of your directory.
	
2. Create a new file in your old directory?
	* **Answer**: ```touch``` will create a new empty file if it does not already exist.

3. Delete a file in your old directory?	
	* **Answer**: ```rm```  can permanently delete files. Use with caution!
	
4. Move or rename a file in your directory? 
	* **Answer**: ```mv``` will move files or directories from one location to another, or rename them if you want to keep them in the same location.  


##**Question 2.**

Imagine you are working with a dataset containing measurements of body size and wing length from different bee species. The same data has been stored in two different R Objects: a matrix called ```beematrix``` and a dataframe called ```beedf```.

What would the difference between using the following commands to access the first column of your data? 

1. ```beematrix[ ,1]```
	* **Answer**:  ```beematrix[ ,1]``` extracts the fist column of the matrix as a vector!
	
2. ```beedf[ ,1]```
	* **Answer**: ```beedf[ ,1]``` extracts the first column of the dataframe as a vector!

3. ```beedf[1]```
	* **Answer**: ```beedf[1]``` extracts the first column of the dataframe but preserves its structure as a dataframe.

4. ```beedf[[1]]```
	* **Answer**: ```beedf[[1]]``` extracts the first column of the dataframe as a vector. 

	
##**Question 3.**

Imagine that you are working on a research project and have a directory called ```bee_research``` in your home directory. Inside the directory there is a file called ```secret_bee_results.txt``` that you want to share with a collaborator. However, you do not want the collaborator to have access to your other files or directories...

what commands would you use to...

1. Allow your collaborator to access the ```bee_research``` directory without being able to list all the files in your home directory? 
	* **Answer**: ```chmod o+x ~/bee_research``` grants them access to the directory, but they cannot list the contents of it. 
	
2. Allow your collaborator to read ```secret_bee_results.txt``` without being able to modify it?
	* **Answer**: ```chmod o+r ~/bee_research/secret_bee_results.txt``` would grant the ability to read the file. 
