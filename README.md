# Teste iCasei developed by Julio

## User tracking application

First download this application to your computer

The JavaScript library generated to track the users is in the folder app/assets/javascript/rastrear.js


## Getting Started

1. Install Rails if you haven't yet:
    
- [Rails Installer](http://railsinstaller.org/pt-BR)</br>

- Follow all recommendations</br>

- Unzip the test_iCasei-master file in the C:\Sites, directory generated in the Rails installation</br>

- The version used in this test was: </br>
    	-   Windows 10 </br>
        -	Rails version: 5.2.3 </br>
		-	Ruby version: 2.6.3 (x64-mingw32) </br>
		

2. Open the C:\Sites folder, right-click the test_iCasei-master folder, and click GIT Bash Here:

Check the Rails and Ruby versions:
			
		$ ruby -v

- If Ruby version is less than 2.6.3(x64-mingw32) install a new version [here](https://rubyinstaller.org/downloads/)
		
		$ rails -v

- If Rails version is less than 5.2.3 install a new version in prompt

		$ gem install rails -v 5.2.3
	
- Install bundler:
	
		$ gem install bundler

		$ bundler install
	
- Close Bash and open again and check the version of rails and Ruby



3. Database creation:
	
	In this application we used SQLITE3.

		$ rails db:drop:_unsafe 
		$ rake db:create
		$ rake db:schema:load


4. Start the web server:

        $ rails server

5. Go to `http://localhost:3000` to navigate the generated site:


6. How to run the test suite:

	Exec Test Models:
		
		$ bundle exec rspec spec/models/page_spec.rb
		$ bundle exec rspec spec/models/rastrear_spec.rb
	
	Exec Test Request URLs (/contato, /sobre, /relatorio, /home):
		
		$ bundle exec rspec spec/requests/pages_spec.rb

	Exec Test Controller:
		
		$ bundle exec rspec spec/controllers/page_controller_spec.rb 