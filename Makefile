all:README.md
README.md:
	@echo "# Guess how many files" > README.md 
	@echo	"This program has to be called as 'bash guessinggame.sh' inside a directory containing files  " >> README.md  
	@echo "Built **$$(date)**  " >> README.md 
	@echo  "File *guessinggame.sh* has $$(cat guessinggame.sh|wc -l ) lines  " >> README.md 
	@echo  "[GitHub Project Home](https://github.com/pepitogrilloGit/Guessing-Game-Shell)  ">> README.md  
	@echo  "[GitHub Pages](https://pepitogrillogit.github.io/Guessing-Game-Shell)  ">> README.md  
	@echo "README.md built"
clean:
	@rm -f README.md	
	@echo "Deleting README.md"
