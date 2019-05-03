# TesteIcasei developed by Julio

## User tracking application

	First download this application to your computer

	The JavaScript library generated to track the users is in the folder app/assets/javascript/rastrear.js


## Getting Started

1. Install Rails if you haven't yet:
    [Rails Installer](http://railsinstaller.org/pt-BR)
    The version used in this test was:
    	-   Windows 10
        -	Rails version: 5.2.3
		-	Ruby version: 2.6.3 (x64-mingw32)

2. At the command prompt, change directory to `teste_iCasei_Julio`:

		$ cd ../teste_iCasei_Julio

3. Database creation:
	
	In this application we used SQLITE3.	
	To generate the tables used in this application:

        $ rails g model Page nome:string email:text
		$ rails g model Rastrear url:string date:integer user:text
		$ rake db:migrate


4. Start the web server:

        $ rails server

5. Go to `http://localhost:3000` to navigate the generated site:


6. How to run the test suite:
   
   CONFIGURE
		Install Tests
		$ gem install rspec
		$ rspec --init

	Exec Test Models
		$ bundle exec rspec spec/models/page_spec.rb
		$ bundle exec rspec spec/models/rastrear_spec.rb
	
	Exec Test Request URLs (/contato, /sobre, /relatorio, /home)
		$ bundle exec rspec spec/requests/pages_spec.rb

	Exec Test Controller
		$ bundle exec rspec spec/controllers/page_controller_spec.rb 